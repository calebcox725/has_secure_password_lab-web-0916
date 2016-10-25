class User < ActiveRecord::Base
  validates :password, confirmation: true

  def authenticate(credentials)
    self if credentials == password
  end
end
