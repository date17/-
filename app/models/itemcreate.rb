class Itemcreate < ApplicationRecord
  #アソシエーションの指定
  has_one :discard
  belongs_to :iteminfo

  validates :createcount, :buycount, presence: { message: 'は、必須項目です。'}
  validates :createcount, :buycount, numericality: { message: 'は、数値です。'}
  
end
