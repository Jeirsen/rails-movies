Rails.application.routes.draw do
  
  post '/movie' => 'movies#movie', :as => 'movie'
  get '/list-movies' => 'movies#list_movies_by_date', :as => 'list_movies_by_date'
  post '/book-movie' => 'movie_books#book_movie', :as => 'book_movie'
  get '/list-booking' => 'movie_books#list_booking', :as => 'list_booking'

end
