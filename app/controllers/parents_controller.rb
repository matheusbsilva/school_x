class ParentsController < ApplicationController

  def index
    @parents = Parent.all
  end

  def new
    @parent = Parent.new
  end

  def show
    @parent = Parent.find(params[:id])
    @alumn = Alumn.find_by_parent_id(@parent.id)
  end

  def edit
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

  def update
    @parent = Parent.find(params[:id])
    if(@parent.update(parent_params))
      redirect_to @parent
    else
      render 'edit'
    end
  end

  private
  def parent_params
    params.require(:parent).permit(:name,:cpf,:address,:password)
  end
end
