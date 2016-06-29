class Project < ApplicationRecord
  has_many :collaboration, dependent: :destroy
  has_many :users , through: :collaboration
end
