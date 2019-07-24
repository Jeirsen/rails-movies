class CreateMovieBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :movie_books do |t|
      t.references :movie, foreign_key: true
      t.datetime :presentation_date
      t.string :client_identification
      t.string :client_name
      t.string :email
      t.string :cell_phone

      t.timestamps
    end
  end
end
