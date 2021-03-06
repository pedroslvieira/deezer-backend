require 'uri'
require 'net/http'

class Api::V1::TracksController < Api::V1::BaseController
  def index
    uri = URI('https://api.deezer.com/chart/0/tracks')
    res = Net::HTTP.get_response(uri)
    response.body = res.body
    response.set_header('Access-Control-Allow-Origin', '*')
    # raise
    render json: response.body
  end
end
