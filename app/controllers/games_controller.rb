require 'open-uri'
require 'json'

class GamesController < ApplicationController

  def home
  end

  def new
    @letters = Array.new(10) { ('a'..'z').to_a.sample }.join(" ")
  end

  def score
    @answer = params[:word]
    answer= @answer.split
    letter= @letters.split
    if answer == letter
  end

  def compute_score(word)

  end


    private

  def english_word?(word)
    response = URI.parse("https://wagon-dictionary.herokuapp.com/#{word}")
    json = JSON.parse(response.read)
    json['found']
  end
end
