class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show  
    if @student.active == false
      @inactive = "This student is currently inactive."
    else
      @active = "This student is currently active."
    end
  end

  def activate
    @student = Student.find(params[:id])
    if @student.active == false
      @student.active = true
    else
      @student.active = false
    end
    @student.save

    redirect_to student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end