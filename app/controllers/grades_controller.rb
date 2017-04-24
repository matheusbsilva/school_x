class GradesController < ApplicationController
  def show
    @grade = Grade.find(params[:id])
  end
  def new
    @grade = Grade.new
    @@alumn = Alumn.find(params[:alumn_id])
    @@subject = Subject.find(params[:subject_id])
  end
  def create
    @grade = Grade.new(grade_params)
    @grade.alumn_id = @@alumn.id
    @grade.subject_id = @@subject.id
    # @grade.create(grade_params,alumn_id:@@alumn.id,subject_id:@@subject.id)
    if (@grade.save)
      redirect_to @@alumn
    else
      render 'new'
    end
  end

  private
  def grade_params
    params.require(:grade).permit(:grade_final,:alumn_id,:subject_id,)
  end
end
