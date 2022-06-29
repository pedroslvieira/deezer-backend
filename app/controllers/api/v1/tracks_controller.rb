require 'uri'
require 'net/http'

class Api::V1::TracksController < Api::V1::BaseController
  def index
    uri = URI('https://api.deezer.com/chart/0/tracks?limit=100')
    res = Net::HTTP.get_response(uri)
    # res.header('Access-Control-Allow-Origin', '*')
    # raise
    render json: res.body
  end
end
