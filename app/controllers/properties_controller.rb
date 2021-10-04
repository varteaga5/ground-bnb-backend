class PropertiesController < ApplicationController
    def create
        property = Property.create!(property_params)
        render json: property, status: :created

    end

    def show 
        property = Property.find(params[:id])
        render json: property, status: :ok
    end

    def index
        properties = Property.where(user_id: params[:user_id])
        render json: properties, status: :ok
    end


    private

    def property_params
        params.require(:property).permit(:address,:price, :user_id)

    end
end
