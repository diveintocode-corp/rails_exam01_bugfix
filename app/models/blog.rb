class Blog < ApplicationRecord
  has_many :comment

  validates :title, presence: true
  validates :content, presence: true
end
