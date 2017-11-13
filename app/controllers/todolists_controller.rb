class TodolistsController < ApplicationController
  before_action :set_todolist, only: [:edit, :update, :destroy, :finished,:show]
  def index
    @todolists = Todolist.all
  end

  def new
    @todolists = Todolist.new
  end

  def create
    @todolists = Todolist.new(todolist_params)
    if @todolists.save
      redirect_to todolists_url
    else
      render  :action => :new
    end
  end

  def edit
  end

  def show
  end

  def update
    if @todolists.update_attributes(todolist_params)
      redirect_to todolists_url
    else
      render  :action => :new
    end
  end

  def finished
     @todolists.update(finished: !(@todolists.finished))
  end
  #redirect_to todolist_path(@todolists)


  def destroy
    @todolists.destroy
    redirect_to todolists_url
  end
end

private

def set_todolist
   @todolists = Todolist.find(params[:id])
 end

def todolist_params
  params.require(:todolist).permit(:name, :due_date, :description ,:finished,:show)
end
