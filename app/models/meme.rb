class Meme < ActiveRecord::Base

  validates_presence_of :name, :humor_level, :image_url
  validates_numericality_of :humor_level

end
