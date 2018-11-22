require 'net/http'
require 'uri'

class SentimentsController < ApplicationController
  # POST /sentiments
  def create
  	body = JSON.parse(request.body.read)
    req = Net::HTTP.post URI('http://0.0.0.0:5000/analyse/sentiment'),
               { 'sentence' => body['sentence'] }.to_json,
               "Content-Type" => "application/json"
    render json: JSON.parse(req.body)
  end
end
