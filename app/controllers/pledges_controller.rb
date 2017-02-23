class PledgesController < ApplicationController
  before_action :require_login

  before_action do
    @reward = Reward.find(params[:reward_id])
  end

  def new
    @pledge = Pledge.new
  end

  def create

    @pledges = @reward.pledges

    if @reward.available?
      @pledge = Pledge.new(pledge_params)
      @pledge.user = current_user
      @pledge.reward = Reward.find(params[:reward_id])

      if @pledge.save
        redirect_to project_url(@pledge.project), notice: "You have successfully backed #{@pledge.project.title}!"
      end

    # else
    #   @project =
    #   render 'projects/show'
    #   print "This didn't work dude"
    end

  end

  private

  def pledge_params
    params.require(:pledge).permit(:dollar_amount)
  end
end
