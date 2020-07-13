class MenuImage < ApplicationRecord
	belongs_to :user
	attachment :image
	validates :menu_title, presence: true
	validates :introduction, presence: true
	has_many :menu_comments, dependent: :destroy
end
