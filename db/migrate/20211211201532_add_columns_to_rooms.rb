class AddColumnsToRooms < ActiveRecord::Migration[6.0]
  def change
    add_column :rooms, :date, :date
    add_column :rooms, :time, :time
  end
end
