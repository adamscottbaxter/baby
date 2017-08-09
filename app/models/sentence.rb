class Sentence < ActiveRecord::Base
	validates :content, presence: true, uniqueness: true
	validates :date_spoken, presence: true
end