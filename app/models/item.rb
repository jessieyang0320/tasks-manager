class Item < ApplicationRecord
validates_presence_of :content
  belongs_to :todolist

  def completed?
  	!completed_at.blank?
  end 
end
