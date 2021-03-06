class Tutorial < ActiveRecord::Base

    has_many :questions, :dependent => :destroy
	#has_many :questions
	validates :title , presence: true, length: {minimum: 1, maximum: 140}
	validates :problem , presence: true , length: {minimum: 1 , maximum: 140}

	accepts_nested_attributes_for :questions,
                                :reject_if => :all_blank,
                                :allow_destroy => true
end