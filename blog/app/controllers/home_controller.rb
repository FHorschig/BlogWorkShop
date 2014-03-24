class HomeController < ApplicationController
  def index
  	@post = Post.last
  	@sidebar_links = Post.select(:title).select(:id)
  end
end
