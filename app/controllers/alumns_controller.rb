class AlumnsController < ApplicationController
  def index
    @alumns = Alumn.all
  end

  def new
    @alumn = Alumn.new
  end

  def show
    @alumn = Alumn.find(params[:id])
  end

  def create
    @alumn = Alumn.new(alumn_params)
    if (@alumn.save)
      redirect_to @alumn
    else
      render 'new'
  end

  private
  def alumn_params
    params.requite(:alumn).permit(:name,:address,:registry,:password,:parent_id)
  end
end
