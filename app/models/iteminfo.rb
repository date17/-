class Iteminfo < ApplicationRecord
  # アソシエーションの設定
  belongs_to :genre
  has_many :itemcreate

  validates :name, :path, :itemtime, presence: { message: 'は、必須項目です。'}
  validates :itemtime, numericality: { message: 'は、数値です。'}
end
