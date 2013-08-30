class Product < ActiveRecord::Base
  validates_presence_of :nome
  validates_presence_of :precoVenda
  belongs_to :categoryProduct
  belongs_to :mark
  attr_accessible :categoryProduct_id, :categoryProduct, :descricao, :nome, :observacao, :precoCompra, :precoMedio, :precoVenda, :quantidadeEstoqueMaximo, :quantidadeEstoqueMinimo
end
