class OrdersController < ApplicationController
def create     
@post = Post.find(params[:post_id])
     @order = @post.orders.create(params[:order])
     redirect_to post_path(@post)
	 end
end
