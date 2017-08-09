class Word < ActiveRecord::Base
	belongs_to :sentence

	validates :content, presence: true, uniqueness: true
	validates :date_spoken, presence: true
end