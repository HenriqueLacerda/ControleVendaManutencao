class City < ActiveRecord::Base
  validates_presence_of :cep, :message => " Digite o CEP da Cidade"
  validates_presence_of :cidade, :message => " Digite o nome da Cidade "
  validates_presence_of :estado, :message => " Digite o Estado da Cidade "
  attr_accessible :cep, :cidade, :estado
end
