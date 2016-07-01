class Project < ApplicationRecord
  has_many :collaboration, dependent: :destroy
  has_many :users , through: :collaboration
  validates :start_year, presence: true
  validates :end_year, presence: true
  has_attached_file :screenshot ,default_url: "/images/:style/missing.png"
validates_attachment_content_type :screenshot, content_type: /\Aimage\/.*\Z/
has_many :comments, dependent: :destroy
end
