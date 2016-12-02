class WelcomeController < ApplicationController
   before_action :current_user
   
  def index
     @posts = Post.all.order("created_at DESC")
  end

  def index
  end
end
