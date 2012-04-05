class CreateProductPictures < ActiveRecord::Migration
  def change
    create_table :product_pictures do |t|
      t.belongs_to :product
      t.string :title
      t.string :descripiton
      t.string :picture_uid
      t.string :picture_name

      t.timestamps
    end
  end
end
