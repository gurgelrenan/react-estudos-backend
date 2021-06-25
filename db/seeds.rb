Event.all.each do |event|
  puts event.id
  event.title = Faker::Lorem.sentence
  event.start_datetime = 30.days.from_now
  event.description = Faker::Lorem.paragraph
  event.image_url = Faker::Avatar.image
  event.save!
end
