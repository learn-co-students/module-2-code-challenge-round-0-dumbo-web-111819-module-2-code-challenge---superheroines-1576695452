class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end
  def show
    @heroine = Heroine.find(params[:id])
  end

  def new
    @errors = flash[:errors]
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.create(name: params[:heroine][:name], super_name:params[:heroine][:super_name], power_id: params[:heroine][:power_id])
    if @heroine.valid?
      redirect_to heroines_path 
    else
      flash[:errors] = @heroine.errors.full_messages
      redirect_to new_heroine_path
    end
    
  end
end
