class MovieBook < ApplicationRecord
  belongs_to :movie
   # validations
  validates_presence_of :presentation_date, :client_identification, :client_name, :email, :cell_phone
end
