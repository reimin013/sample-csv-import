class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :category_large
      t.string :category_small
      t.string :logo_id

      t.timestamps
    end
  end
end
