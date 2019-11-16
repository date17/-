class GenresController < ApplicationController
layout 'genre'
  before_action :set_action, only: [:edit, :delete]

  # 全表示
  def index
    @genres = Genre.all
    @msg = 'show all genre data'
  end

  # 新規作成
  def add
    @genre = Genre.new
    @genres = Genre.all
    @msg = 'please input new genre data'

    if request.post?
      @genre = Genre.create(genre_params)
      @msg = 'sucsess create new data'
      redirect_to '/genres/index'
    end
  end

  # 更新
  def edit
    @msg = 'prease input update data'
    @genres = Genre.all
    if request.patch?
      @genre.update(genre_params)
      @msg = 'sucsess update data'
      redirect_to '/genres/index'
    end
  end

  # 削除
  def delete
    @genre.destroy
    @msg = 'sucsess delete data'
    redirect_to '/genres/index'
  end

  private
  def genre_params
    params.require(:genre).permit(:name)
  end
  
  def set_action
    @genre = Genre.find(params[:id])
  end

end
