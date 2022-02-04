class RetirementsController < ApplicationController

  def new
  end

  def create
    if current_employee.destroy
      reset_session
      redirect_to root_path, notice: "退会完了しました"
    end
  end

end
