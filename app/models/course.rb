class Course < ApplicationRecord
  belongs_to :constructor
  validates :title, presence: true
  validates :description, presence: true
end
