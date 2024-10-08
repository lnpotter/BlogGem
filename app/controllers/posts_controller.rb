class PostsController < ApplicationController
    before_action :set_post, only: [:show, :update, :destroy]
  
    # GET /posts
    def index
      @posts = Post.all
    
      render json: @posts.map { |post|
        post.as_json.merge({ image_url: url_for(post.image) if post.image.attached? })
      }
    end
  
    # GET /posts/:id
    def show
      render json: @post.as_json.merge({ image_url: url_for(@post.image) if @post.image.attached? })
    end
  
    # POST /posts
    def create
      @post = Post.new(post_params)
  
      if @post.save
        render json: @post, status: :created, location: @post
      else
        render json: @post.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /posts/:id
    def update
      if @post.update(post_params)
        render json: @post
      else
        render json: @post.errors, status: :unprocessable_entity
      end
    end
  
    # DELETE /posts/:id
    def destroy
      @post.destroy
      head :no_content
    end
  
    private
  
    def set_post
      @post = Post.find_by!(slug: params[:slug])
    end
  
    def post_params
        params.require(:post).permit(:title, :content, :author, :image)
    end
  end
  