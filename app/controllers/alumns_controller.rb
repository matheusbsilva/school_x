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
    @parent = Parent.find(params[:parent_id])
    @alumn = Alumn.new(alumn_params)
    @alumn.parent_id = @parent.id
    if (@alumn.save)
      redirect_to @alumn
    else
      debugger
      render 'new'
    end
  end

  private
  def alumn_params
    params.require(:alumn).permit(:name,:address,:registry,:password)
  end
end
