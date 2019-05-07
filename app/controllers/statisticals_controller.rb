class StatisticalsController < ApplicationController

  def create
    @statistical = Statistical.where(created_at: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day)
    if @statistical.blank?
      @statistical = Statistical.new quantity: params[:quantity].to_i
      @statistical.save
    else
      @statistical[0].update_attributes quantity: @statistical[0].quantity + 1
      @statistical[0].save
    end
   
  end

  private

  def statistical_params
    params.require(:statistical).permit :quantity
  end
end
