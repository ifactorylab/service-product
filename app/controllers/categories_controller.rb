class CategoriesController < ApplicationController
  def index
    render json: { categories: Category.where(site_id: params[:id]) }, status: 200
  end

  def create
    Category.create(create_params)
  end

  private

  def create_params
    hash = params.require(:category).permit(:name)
    hash.each_value { |value| value.squish! if value.kind_of? String }
    hash.merge!({ site_id: params[:id] })
  end
end
