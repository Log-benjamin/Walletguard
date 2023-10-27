class CategoriesController < ApplicationController
  load_and_authorize_resource

  def index
    return unless current_user

    @user = User.includes(categories: :activities).find(current_user.id)
    @totals = []
    @user.categories.each do |category|
      total_amount = 0
      category.activities.each do |cost|
        total_amount += cost.amount
      end
      @totals << total_amount
    end
  end

  def show
    @category = Category.includes(:activities).find_by_id(params[:id])
    @total = 0

    @category.activities.each do |price|
      @total += price.amount
    end
  end

  def new
    @category = Category.new
  end

  def create
    @category = current_user.categories.new(category_params)
    respond_to do |f|
      f.html do
        if @category.save
          flash[:notice] = 'New Category was successfully created.'
        else
          flash[:alert] = "Failed to add Category - #{@category.errors.full_messages.first}"
        end
        redirect_to categories_path
      end
    end
  end

  def destroy
    category = Category.find(params[:id])
    if category.destroy
      flash[:notice] = 'Category Deleted!'
    else
      flash[:alert] = "Failed to Detele - #{@category.errors.full_messages.first} - Category"
    end
    redirect_to categories_path
  end

  private

  def category_params
    params.require(:category).permit(:name, :icon)
  end
end
