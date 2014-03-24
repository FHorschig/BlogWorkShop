class PostsController < ApplicationController

	def new
	end

	def create
		@post = Post.new(params[:post])
		@post.save
		redirect_to action: :show, id: @post.id
	end

	def show
		@post = Post.find(params[:id])
	end

	def single_post
		post = Post.find(params[:id])
		render :json =>{
			title: post.title,
			text:  post.text
		}
	end
end
