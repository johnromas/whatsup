class Event < ActiveRecord::Base
	has_many :attendences
	has_many :users, through: :attendences
end
