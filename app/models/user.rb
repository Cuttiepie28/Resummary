class User < ApplicationRecord
  has_many :collaboration
  has_many :projects , through: :collaboration
  has_secure_password
validates :email, presence: true, uniqueness: true
validates_length_of :summary, maximum: 150
end
