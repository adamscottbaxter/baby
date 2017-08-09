class Sentence < ActiveRecord::Base
	has_many :words, dependent: :destroy

	validates :content, presence: true, uniqueness: true
	validates :date_spoken, presence: true

	after_commit :build_words

	private

	def build_words
		content.split.each do |word|
			Word.create(sentence: self, content: word, date_spoken: self.date_spoken)
		end
	end
end