class Bank < ActiveRecord::Base
  belongs_to :users
  belongs_to :agendas
end
