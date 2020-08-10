# frozen_string_literal: true

require 'sinatra'
require 'sisimai'

# http://sinatrarb.com/intro-ja.html
set :bind, '0.0.0.0'
set :port, ENV['PORT']&.to_i || 10000

post '/detect' do
  eml = params['data']

  v = Sisimai.make(eml)
  return '{}' unless v.is_a? Array

  # https://libsisimai.org/ja/data/
  v.first.to_json
end

get '/health' do
  [200, 'OK']
end
