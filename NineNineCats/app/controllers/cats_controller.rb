class CatsController < ApplicationController
  def index
    @cats = Cat.all
    render :index 
  end

  def show
    @cat = Cat.find(params[:id])
    render :show
  end

  def new
    @cat = Cat.new
    render :new
  end

  def edit
    @cat = Cat.find(params[:id])
    render :edit
  end

  def create
    @cat = Cat.new(cat_params)

    # fail

    if @cat.save
      redirect_to cat_url(@cat)
    else
      render json: @cat.errors.full_messages
    end
  end

  def update
    @cat = Cat.find(params[:id])

    if @cat.update_attributes(cat_params)
      redirect_to cat_url(@cat)
    else
      render json: @cat.errors.full_messages
    end

  end

  private

  def cat_params
    params.require(:cat).permit(:name, :birth_date, :color, :sex, :description)
  end
end


# Seed database
# Build out controller
# Create views
