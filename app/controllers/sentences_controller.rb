class SentencesController < ApplicationController
	def index
		@sentence = Sentence.new
		@sentences = Sentence.all
	end

	def create
		@sentence = Sentence.new(sentence_params)
		if @sentence.save
			redirect_to sentences_path
		else
			@sentences = Sentence.all
			render 'index'
		end
	end

	private

	def sentence_params
		params.require(:sentence).permit(:content, :date_spoken)
	end
end