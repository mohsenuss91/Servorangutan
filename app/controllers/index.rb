get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/surveys/:id' do

  @survey = Survey.find(params[:id])
  erb :single_survey

end

post '/submit_responses/:survey_id' do
  Completion.create!(survey_id: params[:survey_id], user_id: [current_user])
  params.values.each do |option_id|
    Response.create!(user_id: [current_user], option_id: option_id)
  end
end
