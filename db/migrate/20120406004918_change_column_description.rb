class ChangeColumnDescription < ActiveRecord::Migration
  def up
    rename_column :product_pictures, :descripiton, :description
  end

  def down
    rename_column :product_pictures, :description, :descripiton
  end
end
