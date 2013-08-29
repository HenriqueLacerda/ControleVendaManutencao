class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :cidade
      t.string :estado
      t.string :cep

      t.timestamps
    end
  end
end
