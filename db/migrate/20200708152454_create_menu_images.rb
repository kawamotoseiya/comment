class CreateMenuImages < ActiveRecord::Migration[5.2]
  def change
    create_table :menu_images do |t|
      t.text :menu_title
      t.string :image_id
      t.text :introduction
      t.integer :user_id

      t.timestamps
    end
  end
end
