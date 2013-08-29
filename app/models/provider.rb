class Provider < ActiveRecord::Base
  belongs_to :city
  attr_accessible :bairro, :cep, :cidade, :endereco, :estado, :nome, :numero, :obs
end
