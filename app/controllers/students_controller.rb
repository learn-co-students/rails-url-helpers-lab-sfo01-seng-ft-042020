class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit]
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student.active = !@student.active
    @student.save
    redirect_to @student
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end