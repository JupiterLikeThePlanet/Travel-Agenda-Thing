class City < ActiveRecord::Base
  has_many :agendas
  has_many :users, through: :agendas
end
