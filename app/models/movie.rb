class Movie < ApplicationRecord
   # validations
   validates_presence_of :name, :description, :poster_url, :init_presentation, :end_presentation
end
