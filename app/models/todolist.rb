class Todolist < ApplicationRecord
	validates_presence_of :title, :description
	has_many :items, dependent: :destroy
	# if not dependent, when delete a list(with items in it), an error will occur
end
