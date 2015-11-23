class User < ActiveRecord::Base
  has_many :agendas
  has_many :cities, through: :agendas
end
