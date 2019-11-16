class ItemcreatesController < ApplicationController
  layout 'itemcreate'
# 前処理
before_action :set_action, only: [:edit, :delete, :update]

# 全表示
  def index
    @itemcreates = Itemcreate.all
    @msg = 'show all itemcreate data'
  end

  # 新規作成
  def add
    @itemnames = []
    @itemcreate = Itemcreate.new
    @msg = 'please input new data'
    @iteminfos = Iteminfo.all
    @iteminfo_1 = @iteminfos.where(genre_id: 1)
    @iteminfo_2 = @iteminfos.where(genre_id: 2)
    @iteminfo_3 = @iteminfos.where(genre_id: 3)
    @iteminfo_4 = @iteminfos.where(genre_id: 4)
    if request.post?
      # 最初は作成個数と販売個数を同じにす
      params[:itemcreate][:buycount] = params[:itemcreate][:createcount]

      @itemcreate = Itemcreate.create(itemcreate_params)
      @msg = 'sucsess create data'
      redirect_to '/itemcreates/index'
    end
  end

  # 更新
  def edit
    @msg = 'please input update data'
    @iteminfos = Iteminfo.all
    @iteminfo_1 = @iteminfos.where(genre_id: 1)
    @iteminfo_2 = @iteminfos.where(genre_id: 2)
    @iteminfo_3 = @iteminfos.where(genre_id: 3)
    @iteminfo_4 = @iteminfos.where(genre_id: 4)
    if request.patch?
      @itemcreate.update(itemcreate_params)
      @msg = 'sucsess update data'
      redirect_to '/itemcreates/index'
    end
  end

  # 削除
  def delete
    @itemcreate.destroy
    @msg = 'sucsess delete data'
    redirect_to '/itemcreates/index'
  end

  private
  def itemcreate_params
    params.require(:itemcreate).permit(:iteminfo_id, :createcount, :buycount)
  end

  def set_action
    @itemcreate = Itemcreate.find(params[:id])
  end
end

