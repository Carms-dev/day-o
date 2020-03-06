class UsersController < ApplicationController
  def show
    # Should other user be able to see your profile page?
    # @user = current_user
    @user = User.find(params[:id])

    # actions_today = ActionCompletion.joins(:challenge_subscription)
    #   .where(challenge_subscriptions: { user_id: @user.id} )
    #   .where("action_completions.created_at > ?", 1.day.ago)
    # @impact_today = actions_today.to_a.sum { |action| action.impact }

    actions_week = ActionCompletion.joins(:challenge_subscription)
      .where(challenge_subscriptions: { user_id: @user.id} )
      .where("action_completions.created_at > ?", 1.week.ago)

    daily_impact = ((Date.today - 6)..Date.today).to_a.each.map { |day, index| [day, 0] }.to_h

    actions_week.each do |action|
      daily_impact[action.created_at.in_time_zone('Eastern Time (US & Canada)').to_date] += action.impact
    end

    # Take hash of { date => impact } and convert to { weekday_number => inpact }
    @impact_week_hash = daily_impact.each_with_index.map { |date_and_impact, index| [index + 1, date_and_impact[1]] }.to_h

    @impact_today = @impact_week_hash[Date.today]
  end
end
