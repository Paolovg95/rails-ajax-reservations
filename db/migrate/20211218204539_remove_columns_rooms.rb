class RemoveColumnsRooms < ActiveRecord::Migration[6.0]
  def change
    remove_column :rooms, :date, :date
    remove_column :rooms, :time, :time
  end
end
