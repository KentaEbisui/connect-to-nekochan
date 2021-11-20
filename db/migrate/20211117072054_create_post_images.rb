class CreatePostImages < ActiveRecord::Migration[5.2]
  def change
    create_table :post_images do |t|
      t.text :title
      t.string :image_id
      t.text :introduction
      t.integer :category_id
      t.integer :recruitment_status
      t.integer :user_id

      t.timestamps
    end
  end
end
