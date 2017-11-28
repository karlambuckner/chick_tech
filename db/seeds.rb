Question.destroy_all
Answer.destroy_all

50.times do |index|
  question = Question.create!(heading: Faker::Seinfeld.character,
                  post: Faker::Seinfeld.quote)

p "Created #{Question.count} questions"

 20.times do |index|
  answer = Answer.create!(body: Faker::Hipster.paragraph(2, false, 4),
                          question_id: question.id)
  end
end

p "Created #{Answer.count} answers"
