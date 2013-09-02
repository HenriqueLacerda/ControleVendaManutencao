class Service < ActiveRecord::Base
  validates_presence_of :nome, :message => " Digite o nome do Servico "
  validates_presence_of :valor, :message => " Digite o valor do Servico "
  attr_accessible :descricao, :nome, :valor
end
