class MoviesController < ApplicationController

  def index
    @movies = Movie.paginate(:page => params[:page], :per_page => 4)
    @all = Movie.all 
    #Movie.distinct.pluck(:movie)
  end

  def create
    @movies = Movie.create(movie_params)
    redirect_to root_path
  end

  def show
    @movie = Movie.find(params[:id])
    @all = Movie.all 
  end


  private

  def movie_params
    params.require(:movie).permit(:moviename, :month, :year, :thoughts)
  end  

end
