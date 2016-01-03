class MembershipsController < ApplicationController
  before_action :set_user
  before_action :set_habit
  before_action :authenticate_user!

  def new
    @membership = @user.memberships.build(params[:membership])
  end

  def create
    @membership = current_user.memberships.build(params[:membership])
    @membership.user_id = current_user.id
    @membership.habit_id = @habit.id

    if @membership.save
      redirect_to @habit, notice: "You are on your way to start this habit!"
    else
      render :new
    end
  end


  private
  def set_user
    @user = current_user
  end
  def set_habit
    @habit = Habit.find(params[:habit_id])
  end
  def membership_params
    params.require(:membership).permit()
  end
end
