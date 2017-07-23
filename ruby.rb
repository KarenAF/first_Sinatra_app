require 'sinatra'

get '/hippo' do
  "Hello Hippo"
end

get '/giraffe' do
  "What's up Giraffe?"
end

get '/jungle' do
  erb :separate_file
end