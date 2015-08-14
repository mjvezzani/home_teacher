class CompanionshipsController < ApplicationController
  def index
    @companionships = Companionship.all
  end

  def show
    @companionship = Companionship.find(params[:id])
  end
end
