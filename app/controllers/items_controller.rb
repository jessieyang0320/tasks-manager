class ItemsController < ApplicationController
before_action :set_todolist
before_action :set_item, except: [:create]
# these two repeated a lot, so make them private and before action
#  except, so we dont call set_item on create action
	def create
		# @todolist = Todolist.find(params[:todolist_id])
		# make this a before_action
		@item = @todolist.items.create(item_params)
		redirect_to @todolist
	end 

	def destroy
		# @item = @todolist.items.find(params[:id])
		@item.destroy
		redirect_to todolist_path(@todolist)
	end 

	def complete
		@item.update_attribute(:completed_at, Time.now)

		redirect_to @todolist, notice: 'to do item completed'
	end 




	private

	def set_todolist
		@todolist = Todolist.find(params[:todolist_id])
	end 

	def set_item
		@item = @todolist.items.find(params[:id])
	end 

	def item_params
		params[:item].permit(:content)
	end 

end
