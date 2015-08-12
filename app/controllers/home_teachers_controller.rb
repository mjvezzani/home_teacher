class HomeTeachersController < ApplicationController
  def index
    @home_teachers = HomeTeacher.all
  end

  def show
    @home_teacher = HomeTeacher.find(params[:id])
  end

  def new
    @home_teacher = HomeTeacher.new
  end

  def create
    @home_teacher = HomeTeacher.new(home_teacher_params)

    if @home_teacher.save
      flash[:success] = "Home Teacher Created"
      redirect_to home_teachers_path
    else
      flash[:error] = "Something went wrong. Please try again"
      render :new
    end
  end

  def edit
    @home_teacher = HomeTeacher.find(params[:id])
  end

  private

  def home_teacher_params
    params.require(:home_teacher).permit(:firstname, :lastname)
  end
end
