class TodolistsController < ApplicationController

	def index
	  @todolists = Todolist.all
	end 

	def new 
	  @todolist = Todolist.new
	end 
# edit function usually between new and create
    def edit
		@todolist = Todolist.find(params[:id])
	end

	def create 
		# render plain: params[:todolist].inspect
	  @todolist = Todolist.new(todolist_params)
	  @todolist.save
	  if  @todolist.save
        # render json: {saved: true}
       redirect_to @todolist
      else
        # render json: {saved: false, errors:  @todolist.errors.full_messages}
        render 'new'
      end

	end 

   def update
   	  @todolist = Todolist.find(params[:id])

   	   if @todolist.update(todolist_params)
		   redirect_to @todolist
	   else
		   render 'edit'
	   end
   end 


	def show
		@todolist = Todolist.find(params[:id])
	end 

	def destroy
		@todolist = Todolist.find(params[:id])
		@todolist.destroy
		redirect_to todolists_path
	end 

 


    private

    def todolist_params
    	params.require(:todolist).permit(:title, :description)
    end 

end
