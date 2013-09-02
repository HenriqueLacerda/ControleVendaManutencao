class Sale < ActiveRecord::Base
  belongs_to :customer
  attr_accessible :clienteBairro, :clienteCep, :clienteCidade, :clienteEndereco, :clienteEstado, :clienteNome, :clienteNumero, :data, :valorDescontoVenda, :valorTotalProdutos, :valorTotalVenda
end
