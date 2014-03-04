class CoursesController < ApplicationController
  def new
    @course = Course.new
  end

  def create
    safe_params = params.require(:course).permit(:title, :description, :start_date, :end_date, :location, :semester)
    @course = Course.new safe_params
    if @course.save
      redirect_to students_path
    else
      render :new, notice: "Course didn't save!"
    end
  end
  
  def courses_params
    params.require(:course).permit(:title, :description, :start_date, :end_date, :location, :semester)
  end
  
end

