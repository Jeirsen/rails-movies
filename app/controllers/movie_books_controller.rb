class MovieBooksController < ApplicationController
    
  def list_booking
    if (params[:presentation_date].blank?)
        response = {success: false, data: "Missing parameters"}
        status = 400
    else
        response = MovieBook.where(:presentation_date => params[:presentation_date])
    end
    render json: response, status: status
  end


  def book_movie
    if (params[:movie_id].blank? or params[:presentation_date].blank? or params[:client_identification].blank? or params[:client_name].blank? or params[:email].blank? or params[:cell_phone].blank?)
        response = {success: false, data: "Missing parameters"}
        status = 400
    else
        is_full = MovieBook.where(:presentation_date => params[:presentation_date], :movie_id => params[:movie_id]).count
        puts is_full
        if (is_full < 10)
            @booked = MovieBook.create!(book_params)
            response = {success: true, data: "Movie was booked successfully."}
            status = 201
        else
            response = {success: false, data: "Booking for this movie if completely full."}
            status = 400
        end
    end
    render json: response, status: status
  end

   private
   def book_params
        params.permit(:movie_id, :presentation_date, :client_identification, :client_name, :email, :cell_phone)
   end
end
