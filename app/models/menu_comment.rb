class MenuComment < ApplicationRecord
	belongs_to :user
	belongs_to :menu_image
end
