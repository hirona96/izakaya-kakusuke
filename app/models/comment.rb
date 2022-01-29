class Comment < ApplicationRecord
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :evaluation
  
  validates :comment, presence: true
  validates :evaluation_id, numericality: { other_than: 1, message: "can't be blank" }

end
