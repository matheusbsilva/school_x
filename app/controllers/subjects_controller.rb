class SubjectsController < ApplicationController

  def index
    @subjects = Subject.all
  end

  def new
    @subject = Subject.new
    @@alumn = Alumn.find(params[:alumn_id])
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def create
    @subject = Subject.new(subject_params)

    if ( @subject.save )
      redirect_to new_alumn_subject_grade_path(@@alumn,@subject)
    else
      render 'new'
    end
  end
  private
  def subject_params
    params.require(:subject).permit(:name)
  end
end
