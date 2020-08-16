class MenuImagesController < ApplicationController
	before_action :authenticate_user!
	def new
		@menu_image = MenuImage.new
	end
	def create
		@menu_image = MenuImage.new(menu_image_params)
		@menu_image.user_id = current_user.id
		@menu_image.save
		redirect_to menu_images_path
	end
	def index
		@menu_images = MenuImage.all
	end
	def show
		@menu_image = MenuImage.find(params[:id])
		@menu_comment = MenuComment.new
	end
	def edit
	end
	def update
	end
	def destroy
	end
	private
	def menu_image_params
		params.require(:menu_image).permit(:menu_title, :image, :introduction)
	end
end
