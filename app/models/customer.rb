class Customer < ActiveRecord::Base
  belongs_to :city
  attr_accessible :bairro, :city, :city_id, :cep, :cidade, :endereco, :estado, :nome, :numero, :obs
end
