class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :nome
      t.string :endereco
      t.string :numero
      t.string :bairro
      t.references :city
      t.string :cidade
      t.string :estado
      t.string :cep
      t.string :obs

      t.timestamps
    end
    add_index :providers, :city_id
  end
end
