class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :description
      t.string :poster_url
      t.datetime :init_presentation
      t.datetime :end_presentation

      t.timestamps
    end
  end
end
