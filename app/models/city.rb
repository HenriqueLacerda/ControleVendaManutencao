class City < ActiveRecord::Base
  validates_presence_of :cep
  validates_presence_of :cidade
  validates_presence_of :estado
  attr_accessible :cep, :cidade, :estado
end
