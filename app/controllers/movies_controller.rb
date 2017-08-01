class MoviesController < ApplicationController

  def index
    @movies = Movie.paginate(:page => params[:page], :per_page => 4)
  end

  def create
    @movies = Movie.create(movie_params)
    redirect_to root_path
  end

  private

  def movie_params
    params.require(:movie).permit(:movie, :month, :year, :thoughts)
  end  

end
