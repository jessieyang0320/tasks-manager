class ItemsController < ApplicationController
before_action :set_todolist
	def create
		# @todolist = Todolist.find(params[:todolist_id])
		# make this a before_action
		@item = @todolist.items.create(item_params)
		redirect_to @todolist
	end 

	def destroy
		@item = @todolist.items.find(params[:id])
		@item.destroy
		redirect_to todolist_path(@todolist)
	end 


	private

	def set_todolist
		@todolist = Todolist.find(params[:todolist_id])
	end 

	def item_params
		params[:item].permit(:content)
	end 

end
