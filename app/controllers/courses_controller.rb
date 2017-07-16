class CoursesController < ApplicationController

  before_action :set_course, only: [:show, :edit, :update, :destroy]
  def index
    @courses = Course.all
  end
  def edit
  end
  def update
    if(@course.update_attributes(course_params))
      redirect_to @course
    else
      render "edit"
    end
  end
  def destroy
    @course.destroy
    redirect_to courses_path
  end
  def show
  end
  def new
    @course = Course.new(constructor_id: params[:id])
  end
  def create
    @course = Course.new(course_params)
    if(@course.save)
      redirect_to @course
    else
      render :new
    end
  end
  private
  def course_params
    params.require(:course).permit(:title, :description, :syllabus, :constructor_id)
  end
  def set_course
    @course = Course.find(params[:id])
  end

end
