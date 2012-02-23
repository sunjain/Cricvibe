class Organization < ActiveRecord::Base
	has_many :tournaments
	has_many :players
	has_many :users
	accepts_nested_attributes_for :users
	validates_presence_of :name
end
