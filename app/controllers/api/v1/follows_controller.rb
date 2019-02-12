class Api::V1::FollowsController < ApplicationController

  before_action :find_follow, only: [:show, :edit, :update, :destroy]

  def index
    @follows = Follow.all
  end

  def show
    #done in the before action
  end

  def new
    @follow = Follow.new
  end

  def create
    @follow = Follow.create(follow_params)
    if @follow.valid?
      redirect_to @follow
    else
      flash[:error] = @follow.errors.full_messages
      redirect_to new_follow_path
    end
  end

  def edit
    #done in the before action
  end

  def update
    @follow.update(follow_params)
    if @follow.valid?
      redirect_to @follow
    else
      flash[:error] = @follow.errors.full_messages
      redirect_to edit_follow_path
    end
  end

  def destroy
    @follow.destroy
    redirect_to follows_path
  end

  private

  def follow_params
    params.require(:follow).permit(:title)
  end

  def find_follow
    @follow = Follow.find_by(id: params[:id])
  end

end
