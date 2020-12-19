class Article < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category

  with_options presence: true do
    validates :title
    validates :image
    validates :info
  end
  validates :category_id, numericality: { other_than: 1, message: 'Select' }
end
