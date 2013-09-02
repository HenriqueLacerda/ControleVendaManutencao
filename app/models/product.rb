class Product < ActiveRecord::Base
  validates_presence_of :nome, :message => " Digite o nome do Produto "
  validates_presence_of :precoVenda, :message => " Digite o preco de venda da Produto "
  belongs_to :categoryProduct
  belongs_to :mark
  attr_accessible :categoryProduct_id, :categoryProduct, :mark_id, :mark, :descricao, :nome, :observacao, :precoCompra, :precoMedio, :precoVenda, :quantidadeEstoqueMaximo, :quantidadeEstoqueMinimo
end
