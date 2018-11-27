require 'net/http'
require 'uri'

class SentimentsController < ApplicationController
  # POST /sentiments
  def create
    body = JSON.parse(request.body.read)
    p "SA_LOGIC_API_URL: #{ENV.fetch("SA_LOGIC_API_URL")}"
    req = Net::HTTP.post URI("#{ENV.fetch("SA_LOGIC_API_URL")}/analyse/sentiment"),
               { 'sentence' => body['sentence'] }.to_json,
               "Content-Type" => "application/json"
    render json: JSON.parse(req.body)
  end
end