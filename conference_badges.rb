# Write your code here.
def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(speakers)
  badges = []
  speakers.each {|name| badges << badge_maker(name)}
  badges
end

def assign_rooms(speakers)
  room_assignment = []
  speakers.each_with_index do |name, index|
    room_assignment << "Hello, #{name}! You'll be assigned to room #{index + 1}!"
  end
  room_assignment
end

def printer(speakers)
  badges = batch_badge_creator(speakers)
  badges.each {|badge_string| puts badge_string}

  room_assignment = assign_rooms(speakers)
  room_assignment.each {|room_string| puts room_string}
end
