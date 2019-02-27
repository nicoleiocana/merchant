class User < ApplicationRecord
  has_many :orders
  
  def self.find_or_create_by_auth(auth_data)
    create_with(name: auth_data["info"]["name"]).find_or_create_by(uid: auth_data["uid"], provider: auth_data["provider"])
  end
end
