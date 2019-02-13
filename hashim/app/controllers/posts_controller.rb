class PostsController < ApplicationController
  before_action :find_post, only: [:show,:edit,:destroy,:update]
  #layout "mailer", except: [:index , :new]

  def index
    @posts = Post.all

  end

  def edit
      @search = @post
  end

  def new
  	@post = Post.new

  end	

  def destroy
    puts "hye i am superman"
  	@post.destroy!
  	redirect_to posts_path
  end

  def update
  	if @post.update(post_params)
  		render 'show'
  	else
  		render plain: "OK"
  	end
  end

  def create

  	@post = Post.new(post_params)
  	if @post.save
  		redirect_to @post
  	else
  		render 'new'
  	end
  end

  def find_post    
    @post = Post.find(params[:id]) 
  end
  def post_params
    params.require(:post).permit(:title,:text,:user_id) 
  end

  def images
    @post = Post.all.order("created_at DESC")
  end


  def dis
    @posts = Post.all
  end

  def search
    @posts = Post.all
  end

end
