class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :nome
      t.string :descricao
      t.references :categoryProduct
      t.references :mark
      t.decimal :precoCompra
      t.decimal :precoVenda
      t.decimal :precoMedio
      t.decimal :quantidadeEstoqueMinimo
      t.decimal :quantidadeEstoqueMaximo
      t.string :observacao

      t.timestamps
    end
    add_index :products, :categoryProduct_id
    add_index :products, :mark_id
  end
end
