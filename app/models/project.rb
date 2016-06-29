class Project < ApplicationRecord
  has_many :collaboration, dependent: :destroy
  has_many :users , through: :collaboration
  validates_length_of :summary, maximum: 150
end
