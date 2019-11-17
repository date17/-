class FamimainController < ApplicationController
layout 'famimain'
  # 全データ表示
  def index
    @genres = Genre.all

    @data = Itemcreate.all

  end

  # ジャンル名検索
  def genre
    @genres = Genre.all
    @genre = params[:genre_id]
    @genre_name = Genre.find(@genre).name
    @data = Itemcreate.joins(:iteminfo).where("genre_id = ?", @genre)

  end

  # 商品名検索
  def show
    #info_id = Iteminfo.find_by(name: params[:id]).id
    @genres = Genre.all
    @iteminfo = Iteminfo.find(params[:id])
    @data = Itemcreate.where(iteminfo_id: @iteminfo.id)
  end
end
