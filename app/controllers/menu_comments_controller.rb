class MenuCommentsController < ApplicationController
	before_action :authenticate_user!
	def create
		menu_image = MenuImage.find(params[:menu_image_id])
		comment = MenuComment.new(menu_comment_params)
		comment.user_id = current_user.id
		comment.menu_image_id = menu_image.id
		comment.save
		redirect_to menu_image_path(menu_image)
	end
	def destroy
		MenuComment.find_by(id: params[:id], menu_image_id: params[:menu_image_id]).destroy
		redirect_to menu_image_path(params[:menu_image_id])
	end
	private
	def menu_comment_params
		params.require(:menu_comment).permit(:comment)
	end
end