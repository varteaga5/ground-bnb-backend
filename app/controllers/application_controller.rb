class ApplicationController < ActionController::API
rescue_from ActiveRecord::RecordInvalid , with: :render_unprocessable_entity_response



def render_unprocessable_entity_response(error)
    render json: { message: error.record.errors.full_messages}, status: unprocessable_entity
end


end
