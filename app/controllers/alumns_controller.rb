class AlumnsController < ApplicationController
  def index
    @alumns = Alumn.all
  end

  def new
    @alumn = Alumn.new
  end

  private
  def alumn_params
    params.requite(:alumn).permit(:name,:address,:registry,:password,:parent_id)
  end
end
