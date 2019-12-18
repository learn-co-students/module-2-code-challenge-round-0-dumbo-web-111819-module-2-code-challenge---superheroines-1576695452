class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show 
    @heroine = Heroine.find(params[:id])
  end 

  def new 
    @heroine = Heroine.new
  end 

  def create 
    @heroine = Heroine.create(name: params[:heroine][:name],super_name: params[:heroine][:super_name],
    power_id: params[:heroine][:power_id])
    redirect_to heroines_path
  end 
end
