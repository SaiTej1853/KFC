class KfcinfoController < ApplicationController
  def home
  end

  def menu
    params[:section]
    @fooditem=Fooditem.where Section: params[:section]
  end

  def contactus
  end

  def show
    @fooditem=Fooditem.find(params[:id])
  end

  def edit
    @food=Fooditem.find(params[:id])
  end

  def update
    @food=Fooditem.find(params[:id])
    if @food.update_attributes(food_params)
      redirect_to(:action=>'menu')
    else
      render('edit')
    end
  end

  def delete
  end

  def new
    @fooditem=Fooditem.new
  end

  def create
    @fooditem=Fooditem.new(food_params)
    if @f.save
      redirect_to(:action=>'home')
    else
      render('new')
    end
  end

  private
  def food_params
    params.require(:food).permit(:name, :price, :description, :section, :image)
  end
end
