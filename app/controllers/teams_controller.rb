class TeamsController < ApplicationController
	before_filter :require_user
  def index
  	@teams = Team.all
  end
  
  def new
  	@team = Team.new
  end
  
  def create
	Team.create(params[:team])
	redirect_to teams_url
  end
  
  def show
  	@team = Team.find(params[:id])
  end
end
