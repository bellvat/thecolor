class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :movie 
      t.string :month
      t.string :year
      t.text :thoughts
      t.timestamps
    end
  end
end
