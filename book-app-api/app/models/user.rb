class User < ApplicationRecord
  validates :auth0_id, :email, presence: true
  validates :auth0_id, :email, uniqueness: true

  def pretty_name
    first_name || email
  end
end
