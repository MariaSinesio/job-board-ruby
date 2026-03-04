class CategoryController < ApplicationController
  def index
    # render json: Category.all, status: :ok , Acessando todos os dados de Category em formato json e o status
    @category = Category.all
  end
  def show
    # render json: Category.find(params[:id]), status: :ok
    @category = Category.find(params[:id])
  end
end
