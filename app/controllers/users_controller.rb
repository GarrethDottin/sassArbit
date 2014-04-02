class UsersController < ApplicationController
skip_before_filter  :verify_authenticity_token

  def index
  end

  def url
    require 'unirest'
    @url = request.raw_post
    puts "This is a test for url"
    p @url
    response = Unirest::get "https://lou455nhdelement-free-natural-language-processing-service.p.mashape.com/nlp-url/",
      parameters: { :url => "http://www.forbes.com/sites/samanthasharf/2014/03/29/for-bitcoin-lessons-in-the-history-of-failed-currencies/"},
      headers: {
        "X-Mashape-Authorization" => "D0KP9zTjmxQxv45hyjNNtVGu4uErpJIX"
      }
      p response
    render :nothing => true
  end
end
