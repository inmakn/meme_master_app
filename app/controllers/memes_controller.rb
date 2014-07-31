class MemesController < ApplicationController

  def index
    @memes = Meme.all
  end

  def show
    @meme = Meme.find(params[:id])
  end

  def new
    @meme = Meme.new
  end

  def create
    @meme = Meme.new(meme_params)
    if @meme.save
      redirect_to memes_path
    else
      render :new
    end
  end

  def destroy
    @meme = Meme.find(params[:id])
    @meme.destroy
    redirect_to(memes_path)
  end

  def meme_params
    params.require(:name, :humor_level, :image_url)
  end
end
