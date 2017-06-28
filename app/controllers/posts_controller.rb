class PostsController < ApplicationController
    def new
        @post = Post.new
    end
    
    def create
        @post = Post.create!(post_params)
        redirect_to city_post_path(@post.city_id, @post)
    end
    
    def show
        @post = Post.find(params[:id])    
        puts @post.picture
    end
    
    def edit
        
        @city = City.find(params[:city_id])
        @post = @city.posts.find(params[:id])

    end
    
    def update
        @post = Post.find(params[:id])
        @post.update(post_params)

        redirect_to city_post_path(@post.city_id, @post)
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy

        #fix this redirect later
        redirect_to posts_path
    end

    private
    def post_params
        params.require(:post)
              .permit(:content, :picture)
              .merge(:user_id => current_user.id, :city_id => params[:city_id])
    end
    
end
