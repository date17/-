class Genre < ApplicationRecord
  has_one :iteminfo

  validates :name, presence:{ message: 'は、必須項目です。'}
end
