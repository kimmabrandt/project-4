class MainController < ApplicationController
  before_action :current_user
  def index
     @posts = Post.where(user_id: current_user).order("created_at DESC")
  end
end
