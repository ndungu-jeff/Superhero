class HeroSerializer < ActiveModel::Serializer
  attributes :id, :name, :super_name
  
  #  relations
  has_many :powers
end
