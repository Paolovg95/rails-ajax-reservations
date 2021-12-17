if @room.persisted?
  json.form json.partial!('rooms/form.html.erb', room: Room.new)
  json.inserted_item json.partial!('rooms/room.html.erb', room: @room)
else
  json.form json.partial!('rooms/form.html.erb',room: @room)
end
