class Customer < ActiveRecord::Base
  belongs_to :city
  validates_presence_of :nome, :message => " Digite o nome do Cliente "
  attr_accessible :bairro, :city, :city_id, :cep, :cidade, :endereco, :estado, :nome, :numero, :obs
end
