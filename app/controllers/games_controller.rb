class GamesController < ApplicationController
  def index
  	@games = Game.all
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

end
