require 'sinatra'

get '/hippo' do
  "Hello Hippo"
end

get '/giraffe' do
  "What's up Giraffe?"
end

get '/jungle' do
  @message = params[:message]
  erb :separate_file
end