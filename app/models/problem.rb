class Problem < ActiveRecord::Base

	has_many :questions
	#validates :title , presence: true, length: {minimum: 5 , maximum: 140}
	#validates :problem , presence: true , length: {minimum: 5 , maximum: 140}
end