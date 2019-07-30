class MoviesController < ApplicationController


  # GET /list-movies
  def list_movies_by_date
    if (params[:init_presentation].blank? or params[:end_presentation].blank?)
        response = Movie.all
    else
        response = Movie.where(:init_presentation => params[:init_presentation]).or(Movie.where(:end_presentation => params[:end_presentation]))
        #response = Movie.where('init_presentation BETWEEN ? AND ?', params[:init_presentation], params[:end_presentation])
    end
    render json: response, status: status
  end

    # POST /movie
  def movie
    if (params[:name].blank? or params[:description].blank? or params[:poster_url].blank? or params[:init_presentation].blank? or params[:end_presentation].blank?)
        response = {success: false, data: "Missing parameters"}
        status = 400
    else
        @movie = Movie.create!(movie_params)
        response = {success: true, data: "Movie created successfully."}
        status = 201
    end
    render json: response, status: status
  end

   private
   def movie_params
        params.permit(:name, :description, :poster_url, :init_presentation, :end_presentation)
   end

end
