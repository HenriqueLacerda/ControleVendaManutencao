class Product < ActiveRecord::Base
  belongs_to :categoryProduct
  belongs_to :mark
  attr_accessible :descricao, :nome, :observacao, :precoCompra, :precoMedio, :precoVenda, :quantidadeEstoqueMaximo, :quantidadeEstoqueMinimo
end
