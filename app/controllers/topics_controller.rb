class TopicsController < ApplicationController
  def new
    render :new
  end
  
  def create
    redirect_to 'topics/edit' 
  #2-9課題3により変更'topics/new'
  end

  def edit
    render :edit
  end

  def update
    redirect_to 'topics/edit'
  end
end