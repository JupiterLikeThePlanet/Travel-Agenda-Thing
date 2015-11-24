class Agenda < ActiveRecord::Base
  has_many :locations
  has_many :saves
  belongs_to :cities
  belongs_to :users
end
