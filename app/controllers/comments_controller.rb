class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @habit = Habit.find(params[:habit_id])
    @comment = @habit.comments.create(params[:comment].permit(:name, :body))
    @comment.user_id = current_user.id

    @comment.save
    redirect_to habit_path(@habit)
  end

  def destroy
    @habit = Habit.find(params[:habit_id])
    @comment = @habit.comments.find(params[:id])
    @comment.destroy

    redirect_to habit_path(@habit)
  end
end
