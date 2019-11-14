class Booldiscard
  attr_accessor :return_data

  #初期化
  def initialize(data)
    @data = data
  end

  # 作成idを持つdiscardがあれば、それを抜いたデータを格納して返す（販売情報画面で廃棄のものを見せたくないが、一様作成データは取っておきたいから）
  # def search_discard
  #   @data.each do |obj|
  #     if Discard.where(itemcreate_id: obj.id).exists?
  #       @return_data << obj
  #     end
  #   end
  # end
end