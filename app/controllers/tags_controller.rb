class TagsController < ApplicationController
  before_action :require_login, only: [:destroy]
  
  def index
    tags = Tag.all
    @unique_tags = tags.uniq { |tag| tag.name }
  end
  def show
    @tag = Tag.find(params[:id])
  end
end
