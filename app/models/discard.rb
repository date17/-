class Discard < ApplicationRecord
  has_one :itemcreate

  validates :itemcreate_id, :discardcount, presence: { message: 'は、必須項目です。' }
  validates :itemcreate_id, :discardcount, presence: { message: 'は、数値です。' }


  def getinfoname(itemcreate_id)
    return Itemcreate.find(itemcreate_id)
  end

  def discardcountcal(buycount, discardcount)
      return buycount.to_i - discardcount.to_i
  end
end
