class Group < ApplicationRecord
	has_many :members
	has_many :members, through: :members
	validates :name, presence: true
end
