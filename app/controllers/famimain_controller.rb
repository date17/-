class FamimainController < ApplicationController
  layout 'famima'

  # 全データ表示
  def index
    page_size = 10
    @page_num = 0
    if params[:page] != nil
      @page_num = params[:page].to_i
    end
    @genres = Genre.all

    @data = Itemcreate.all.offset(page_size * @page_num).limit(page_size)

  end

  # ジャンル名検索
  def genre
    page_size = 10
    @page_num = 0
    if params[:page] != nil
      @page_num = params[:page].to_i
    end
    @genres = Genre.all
    @genre = params[:genre_id]
    @data = Itemcreate.joins(:iteminfo).where("genre_id = ?", @genre).offset(page_size * @page_num).limit(page_size) 

  end

  # 商品名検索
  def show
    page_size = 5
    @page_num = 0
    if params[:page] != nil
      @page_num = params[:page].to_i
    end
    @genres = Genre.all
    @iteminfo = Iteminfo.find(params[:id])
    @data = Itemcreate.where(iteminfo_id: @iteminfo.id).offset(page_size * @page_num).limit(page_size)
  end
end
