class PowersController < ApplicationController
  def index
      powers = Power.all
      render json: powers
  end

  # get powers by id

  def show
      power = find_power_id
      render json: power
  end

  # update power's description
  def update
      power = find_power_id
      if power
          if power.update(power_params)
              render json: power
          else
              render json: { errors: power.errors.full_messages}, status: :unprocessable_entity
          end
          else 
              render json: { error: "Power not found" }, status: :not_found
          end
  end


  private
  def power_params
      params.permit(:description)
  end

  def find_power_id
      Power.find(params[:id])
  end

end