class Admin::FilmsController < ApplicationController

  before_action :find_film, only: [:show, :edit, :update, :destroy]


  def index
    @films = Film.all
  end

  def new
  end

  def show
  end

  def edit
  end

  private

  def find_film
    @film = Film.find(params[:id])
  end

end
