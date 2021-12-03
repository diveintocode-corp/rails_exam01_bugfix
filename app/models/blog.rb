class Blog < ApplicationRecord
  has_many :comment, dependent: :destroy

  validates :title, presence: true
  validates :content, presence: true
end
