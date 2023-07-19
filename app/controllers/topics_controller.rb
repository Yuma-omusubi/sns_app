class TopicsController < ApplicationController
  
 
  before_action :authenticate_user!, except: [:index, :show]  # Deviseのヘルパーメソッド
  
  
  
  def new
    render :new
  end
  
  def create
    redirect_to topics_edit_path
  end
  
  def edit 
    render :edit
  end
  
  def update
    redirect_to topics_edit_path
  end
  
  
  
end
