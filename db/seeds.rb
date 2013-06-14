require 'faker'

10.times do
  User.create(:name => Faker::Name.name, :email => Faker::Internet.email, :password => 'password')
end 

3.times do 
  Survey.create(:name => Faker::Lorem.sentence(word_count = 4), :user_id => rand(1..10))
end

20.times do
  Question.create(:text => Faker::Lorem.sentence, :survey_id => rand(1..3))
end 

150.times do
  Option.create(:text => Faker::Lorem.word, :question_id => rand(1..20))
end

10.times do 
  Response.create(:user_id => rand(1..10), :option_id => rand(1..150))
end

# NO COMPLETIONS NECESSARY :(((((
