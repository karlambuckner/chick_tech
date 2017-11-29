Question.destroy_all
Answer.destroy_all

6.times do
  Question.create!(heading: Faker::Seinfeld.unique.character,
                  post: Faker::Seinfeld.unique.quote)
end
p "Created #{Question.count} questions"

10.times do
  Answer.create!(body: Faker::Hipster.paragraph(2, false, 4),
                        question_id: Faker::Number.between(Question.first.id, Question.last.id))

end

p "Created #{Answer.count} answers"
