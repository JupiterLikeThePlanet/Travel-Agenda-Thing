require 'bcrypt'

class User < ActiveRecord::Base
  include BCrypt
  has_many :agendas
  has_many :banks
  has_many :cities, through: :agendas


  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end
