class AlumnsController < ApplicationController
  def index
    @alumns = Alumn.all
  end

  def new
    @alumn = Alumn.new
    @@parent = Parent.find(params[:parent_id])
  end

  def show
    @alumn = Alumn.find(params[:id])
  end

  def edit
    @alumn = Alumn.find(params[:id])
  end

  def create
    @alumn = Alumn.new(alumn_params)
    @alumn.parent_id = @@parent.id
    if (@alumn.save)
      redirect_to @alumn
    else
      debugger
      render 'new'
    end
  end

  def update
    @alumn = Alumn.find(params[:id])
    if(@alumn.update(alumn_params))
      redirect_to @alumn
    else
      render 'edit'
    end
  end

  private
  def alumn_params
    params.require(:alumn).permit(:name,:address,:registry,:password,:parent_id)
  end
end
