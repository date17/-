class DiscardsController < ApplicationController
  layout 'famima'
  before_action :set_action, only: [:edit, :delete]

  def index
    @discards = Discard.all
  end

  def add
    @discard = Discard.new
    @itemcreate = Itemcreate.find(params[:id])

    

    if request.post?
      @itemcreate = Itemcreate.find(params[:discard][:itemcreate_id])
      # 販売個数と廃棄個数があっているかの確認メソッド
      buycount = Discard.new.discardcountcal(@itemcreate.buycount, params[:discard][:discardcount])
      # 合わなかったら飛ぶ
      if buycount < 0
        @msg = "販売個数と廃棄個数があっていません。"
        redirect_to "/discards/add/#{params[:id]}"
      else
        # 廃棄処理により販売個数も変動させる
        @itemcreate.update(buycount: buycount)
        Discard.create(discard_params)
        @msg = 'sucsess create new data'
        redirect_to "/discards/index"
      end
    end
  end

  # def edit
  #   @msg = 'please input update data'
  #   @itemcreates = Itemcreate.all
  #   @itemcreate = Itemcreate.find(@discard.itemcreate_id)
    

  #   if request.patch?
  #     @itemcreate = Itemcreate.find(params[:discard][:itemcreate_id])
  #     # 販売個数と廃棄個数があっているかの確認メソッド
  #     buycount = Discard.new.discardcountcal(@itemcreate.buycount, params[:discard][:discardcount])
  #     # 合わなかったら飛ぶ
  #     if buycount < 0
  #       @msg = "販売個数と廃棄個数があっていません。"
  #       redirect_to "/discards/edit/#{params[:id]}"
  #     else
  #       # 廃棄処理により販売個数も変動させる
  #       @itemcreate.update(buycount: buycount)
  #       @discard.update(discard_params)
  #       @msg = 'sucsess update data'
  #       redirect_to '/discards/index'
  #     end
  #   end
  # end

  # def delete
  #   # 販売個数を作成個数に合わせる
  #   @itemcreate = Itemcreate.find(@discard.itemcreate_id)
  #   @itemcreate.update(buycount: @itemcreate.createcount)
  #   @discard.destroy
  #   @msg = 'sucsess delete data'
  #   redirect_to '/discards/index'
  # end

  private
  def discard_params
    params.require(:discard).permit(:itemcreate_id, :discardcount, :memo)
  end

  def set_action
    @discard = Discard.find(params[:id])
  end
end
