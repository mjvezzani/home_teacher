class HomeTeachersController < ApplicationController
  def update
    ht = HomeTeacher.find(params[:id])
    
  end
end
