class Blog < ApplicationRecord
  # ErrorCause: undefined method `comments' for #<Blog:0x00007f9d2e9f6758>
  # FixReason: Fix (comment --> comments) association naming convention
  has_many :comments

  validates :title, presence: true
  validates :content, presence: true
end
