class ActionSettingsController < ApplicationController

  def update
    @setting = ActionSetting.find(params[:id])
    @setting.toggle_habit!

    @setting.save
    @setting.reload
    if @setting.habit
      respond_to do |format|
        format.html { render 'pages/dashboard' }
        format.js  # <-- idem
      end
      # redirect_to dashboard_path
      # flash[:notice] = "Great! It's added to your habits!"
    else
      redirect_to habit_path
    end
  end

  def update_check
    @setting = ActionSetting.find(params[:id])
    @setting.toggle_checked!
    @setting.save
    respond_to do |format|
      format.html { render 'pages/habit' }
      format.js  # <-- idem
    end
    # redirect_to habit_path
  end
end


