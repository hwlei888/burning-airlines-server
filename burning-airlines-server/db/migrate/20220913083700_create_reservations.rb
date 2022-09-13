class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.text :row
      t.text :column

      t.timestamps
    end
  end
end
