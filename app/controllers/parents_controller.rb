class ParentsController < ApplicationController

  def index
    @parents = Parent.all
  end

  def new
    @parent = Parent.new
  end

  def show
    @parent = Parent.find(params[:id])
  end

  def create
    @parent = Parent.new(parent_params)
    if(@parent.save)
      redirect_to new_parent_alumn_path(@parent)
    else
      render 'new'
    end
  end

  private
  def parent_params
    params.require(:parent).permit(:name,:cpf,:address,:password)
  end
end
