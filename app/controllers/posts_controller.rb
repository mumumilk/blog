class PostsController < ApplicationController
    def new
    end

    def edit
        @post = Post.find(params[:id])
    end

    def create
        @post = Post.new(post_params)
        
        @post.save
        redirect_to @post
    end

    def update
        @post = Post.find(params[:id])

        if @post.update(post_params)
            redirect_to @post
        else
            render 'edit'
        end
    end
    
    def show
        @post = Post.find(params[:id])
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        
        redirect_to '/'
    end

    private
    def post_params
      params.require(:post).permit(:title, :text)
    end

end
