class Provider < ActiveRecord::Base
  belongs_to :city
  validates_presence_of :nome, :message => " Digite o nome do Fornecedor "
  attr_accessible :bairro, :cep, :cidade, :endereco, :estado, :nome, :numero, :obs
end
