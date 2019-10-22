class MoviesController < ApplicationController
  # before_action :set_movie, only: %i[show upadte destroy]

  def index
    @movie = Movie.all
    json_response(@movie)
  end

  def create
    @movie = Movie.create!(movie_params)
    json_response(@movie, :created)
  end

  def show
    json_response(@movie)
  end

  def update
    @movie.update(movie_params)
    head :no_content
  end

  def destroy
    @movie.destroy
    head :no_content
  end

  private

  def movie_params
    params.permit(:name, :description)
  end

  def set_movie
    @movie = Movie.find(params[:id])
  end
end
