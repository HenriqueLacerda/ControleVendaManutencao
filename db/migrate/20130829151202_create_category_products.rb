class CreateCategoryProducts < ActiveRecord::Migration
  def change
    create_table :category_products do |t|
      t.string :nome

      t.timestamps
    end
  end
end
