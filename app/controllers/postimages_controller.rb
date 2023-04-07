class PostimagesController < ApplicationController
  def new
    @postimage = Postimage.new
  end

  def create
    @postimage = Postimage.new(postimage_params)
    @postimage.user_id = current_user.id
    @postimage.save
    redirect_to postimage_path
  end

  def index
  end

  def show
  end

  def postimage_params
    params.require(:post_image).permit(:shop_name, :image, :caption)
  end

end
