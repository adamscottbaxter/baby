class SentencesController < ApplicationController
	def index
		@sentence = Sentence.new
	end
end