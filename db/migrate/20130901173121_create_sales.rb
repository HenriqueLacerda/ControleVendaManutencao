class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.date :data
      t.references :customer
      t.string :clienteNome
      t.string :clienteEndereco
      t.string :clienteNumero
      t.string :clienteBairro
      t.string :clienteCidade
      t.string :clienteEstado
      t.string :clienteCep
      t.string :valorTotalProdutos
      t.string :valorDescontoVenda
      t.string :valorTotalVenda

      t.timestamps
    end
    add_index :sales, :customer_id
  end
end
