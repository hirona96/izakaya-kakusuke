class FormsController < ApplicationController
  def index
    @form = Form.new
  end

  def create
    @form = Form.new(form_params)
    if @form.save
      render :create
    else
      render :index
    end
  end

  private

  def form_params
    params.require(:form).permit(:last_name_kana, :first_name_kana, :phone_number, :number_of_people, :datetime, :seat)
  end
end
