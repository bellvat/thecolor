class MoviesController < ApplicationController

  def index
    @movie = Movies.all
  end

  def create
  end 

  def new
  end

end
