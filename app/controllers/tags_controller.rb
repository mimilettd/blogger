class TagsController < ApplicationController
  def index
    tags = Tag.all
    @unique_tags = tags.uniq { |tag| tag.name }
  end
  def show
    @tag = Tag.find(params[:id])
  end
end
