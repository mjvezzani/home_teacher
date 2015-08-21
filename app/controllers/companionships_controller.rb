class CompanionshipsController < ApplicationController
  def index
    @companionships = Companionship.all
  end

  def show
    @companionship = Companionship.find(params[:id])
  end

  def new
  end
  
  def create
    companionship = Companionship.new
    home_teacher_1 = HomeTeacher.find(params[:first_home_teacher_id])
    home_teacher_2 = HomeTeacher.find(params[:second_home_teacher_id])
    companionship.home_teachers << [home_teacher_1, home_teacher_2]
    
    if companionship.save
      redirect_to companionships_path
    else
      render :new
    end
   @home_teacher1 = params
  end
end
