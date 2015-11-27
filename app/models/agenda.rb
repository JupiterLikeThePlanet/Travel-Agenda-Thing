class Agenda < ActiveRecord::Base
  has_many :locations
  belongs_to :cities
  belongs_to :users
  has_many :banks
end
