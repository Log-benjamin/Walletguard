class ActivitiesController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource

  def new
    @activity = Activity.new
  end

  def create
    @activity = current_user.activities.new(activity_params)

    if @activity.save
      @category_activity = @activity.category_activities.create(category_activity_params)
      flash[:notice] = 'activity was successfully created.'
    else
      flash[:alert] = "Failed to add activity - #{@activity.errors.full_messages.first}"
    end
    redirect_to "/categories/#{@category_activity.category_id}"
  end

  def destroy
    @activity.destroy

    respond_to do |format|
      format.html { redirect_to activities_url, notice: 'activity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def category_activity_params
    params.require(:activity).permit(:category_id)
  end

  def activity_params
    params.require(:activity).permit(:name, :amount)
  end
end
