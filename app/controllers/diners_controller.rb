class DinersController < ApplicationController

  def new
    @diner = Diner.new
  end

  def index
    @diners = Diner.all
  end

  def create
    @diner = Diner.new(diner_params)
    @diner.user = current_user
    if @diner.save
      flash[:notice] = "Diner added succesfully!"
      redirect_to diner_path(@diner)
    else
      flash[:errors] = @diner.errors.full_messages.join(". ")
      render :new
    end
  end

  def show
    @diner = Diner.find(params[:id])
    @reviews = @diner.reviews
  end

  def edit
    @diner = Diner.find(params[:id])
  end

  def update
    @diner = Diner.find(params[:id])
    if @diner.update_attributes(diner_params)
      redirect_to diner_path(@diner)
    else
      render :edit
    end
  end

  def destroy
    @diners = Diner.all.order(created_at: :desc)
    @diner = Diner.find(params[:id])
    @diner.destroy

    redirect_to diners_path
  end

  private
  def diner_params
    params.require(:diner).permit(:name, :address, :description)
  end

end
