class User < ApplicationRecord
  has_secure_password
  before_create {
    generate_auth(:auth_token)
  }
  def generate_auth(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end
end
