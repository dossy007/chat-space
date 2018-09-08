class Group < ApplicationRecord
	has_many :members
<<<<<<< HEAD
	has_many :members, through: :members
=======
	has_many :users, through: :members
>>>>>>> origin/master
	validates :name, presence: true
end
