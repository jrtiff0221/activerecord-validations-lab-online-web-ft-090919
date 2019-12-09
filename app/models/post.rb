class Post < ActiveRecord::Base
  validates_with PostValidator
  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 290 }
  validates :category, inclusion: { in: %w( Fiction Non-Fiction)}
end
