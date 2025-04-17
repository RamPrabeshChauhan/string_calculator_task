class Api::V1::CalculatorController < ApplicationController
  def add
    result = StringCalculator.new.add(params[:numbers].to_s)

    render json: { result: result }
  rescue StandardError => e
    render json: { error: e.message }, status: :bad_request
  end
end
