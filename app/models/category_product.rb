class CategoryProduct < ActiveRecord::Base
  validates_presence_of :nome, :message => " Digite o nome da Categoria "
  attr_accessible :nome
end
