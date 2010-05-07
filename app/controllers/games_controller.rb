class GamesController < ApplicationController
  before_filter :convert_team_name_parameters_to_models, :only => [:create, :update]  


  def index
  	@games = Game.all
  	respond_to do |format|
      format.html
      format.xml do
        render :xml => @games.to_xml(:include => [:home_team, :away_team])
      end
      format.csv do
        #see also send_file (http://railsbrain.com/api/rails-2.3.2/doc/index.html?a=M000195&name=send_file)
        send_data Game.convert_games_to_csv(@games), :filename => 'games.csv'
      end
    end
  end
  
  def new
  	@game = Game.new
  end
  
  def create
    
  	Game.create(params[:game])
  	redirect_to games_url
  end

  def edit
  	@game = Game.find(params[:id])
  end
  
  def update
  	@game = Game.find(params[:id])
  	@game.update_attributes(params[:game])
  	redirect_to games_url
  end
  
  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    render :js => "$('##{dom_id(@game)}').remove();"
  end

  private
  def convert_team_name_parameters_to_models
    params[:game][:home_team] = Team.find_or_create_by_name(params[:game][:home_team]) 
    params[:game][:away_team] = Team.find_or_create_by_name(params[:game][:away_team]) 
  end
end
