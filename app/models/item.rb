class Item < ApplicationRecord
validates_presence_of :content
  belongs_to :todolist
end
