class PropertiesController < ApplicationController
    def create
        property = Property.create!(property_params)
        render json: property, status: :created

    end

    private

    def property_params
        params.require(:property).permit(:address,:price, :user_id)

    end
end
