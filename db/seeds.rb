Question.destroy_all

50.times do |index|
  question = Question.create!(heading: Faker::Seinfeld.character,
                  post: Faker::Seinfeld.quote)
end
p "Created questions"
