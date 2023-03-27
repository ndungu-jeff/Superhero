class HeroPowersController < ApplicationController
 rescue_from ActiveRecord::RecordInvalid, with: :invalid_details 
  # create hero powers
  def create
    hero_power = HeroPower.create!(hero_power_params)
    render json: hero_power.power, serializer: PowerSerializer
    #   hero_power = HeroPower.new(hero_power_params)
      
    #   if hero_power.save
    #       render json: hero_power.power, serializer: PowerSerializer
    #   else
    #       render json: { errors: ["validation errors"] }, status: :unprocessable_entity
    #   end
  end
     private
  def hero_power_params
      params.permit(:strength, :power_id, :hero_id)
  end
  def invalid_details(invalid)
    render json:{error:invalid.record.errors.full_messages}, status: :unprocessable_entity
end
end
