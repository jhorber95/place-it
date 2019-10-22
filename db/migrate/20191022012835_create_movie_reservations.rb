class CreateMovieReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :movie_reservations do |t|
      t.timestamp :date
      t.integer :movie_id

      t.timestamps
    end
  end
end
