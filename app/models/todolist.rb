class Todolist < ApplicationRecord
	validates_presence_of :title, :description
	has_many :items
end
