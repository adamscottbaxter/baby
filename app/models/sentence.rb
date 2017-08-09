class Sentence < ActiveRecord::Base
	has_many :words

	validates :content, presence: true, uniqueness: true
	validates :date_spoken, presence: true
end