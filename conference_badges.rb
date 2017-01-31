# Write your code here.
def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(name_array)
  batch_name_array = []
  name_array.each do |name|
    batch_name_array << badge_maker(name)
  end
  batch_name_array
end

def assign_rooms(name_array)
  room_number = 1
  room_assignment_array = []

  name_array.each do |name|
    room_assignment_array << "Hello, #{name}! You'll be assigned to room #{room_number}!"
    room_number += 1
  end
  room_assignment_array
end

def printer(attendees)
  batch_array = batch_badge_creator(attendees)
  room_array = assign_rooms(attendees)

  index = 0
  batch_array.each do |intro|
    puts intro
    puts room_array[index]
    index += 1
  end
end
