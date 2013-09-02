class Mark < ActiveRecord::Base
  validates_presence_of :nome, :message => " Digite o nome da Marca "
  attr_accessible :nome
end
