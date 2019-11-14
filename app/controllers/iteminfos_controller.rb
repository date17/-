class IteminfosController < ApplicationController
  layout 'famima'
  before_action :set_iteminfo, only: [:show, :edit]

  #全表示
  def index
    @iteminfos = Iteminfo.all.order('genre_id asc')
    @msg = 'show all iteminfo data'
    @genres = Genre.all
  end

  def show
    @msg = 'show iteminfo data'
  end

  # 新規作成
  def add
    @iteminfo = Iteminfo.new
    @msg = 'please input new iteminfo data'
    @genre = Genre.all
    if request.post?
      # nameを使ってpathを作成
      params[:iteminfo][:path] = params[:iteminfo][:name] + '.jpg'
      Iteminfo.create(iteminfo_params)
      @msg = 'sucsess create data'
      redirect_to '/iteminfos/index'
    end
  end

  # 編集
  def edit
    @msg = 'please input update iteminfo data'
    @genre = Genre.all

    if request.patch?
      @iteminfo.update(iteminfo_params)
      @msg = 'sucsess update data'
      redirect_to '/iteminfos/index'
    end
  end

  # ジャンルごと
  def genre
    @genres = Genre.all
    @genre = params[:id]
    @datas = Iteminfo.where(genre_id: @genre)
    @msg = "separate to genre"
  end

  # 削除
  def delete
    Iteminfo.find(params[:id]).destroy
    @msg = 'sucsess deletes data'
    redirect_to '/iteminfos/index'
  end

  private

  def set_iteminfo
    @iteminfo = Iteminfo.find(params[:id])
  end

  # バリデーションチェック
  def iteminfo_params
    params.require(:iteminfo).permit(:name, :path, :itemtime, :genre_id)
  end
end
