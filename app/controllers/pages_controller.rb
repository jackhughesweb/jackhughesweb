class PagesController < ApplicationController

  def index
    @posts = Post.where(published: true).order("publish_date DESC").limit(3)
    @projects = Project.where(published: true).order("publish_date DESC").limit(3)
  end

end
