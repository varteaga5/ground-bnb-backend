class ApplicationController < ActionController::API
rescue_from ActiveRecord::RecordInvalid , with: :render_unprocessable_entity_response
rescue_from ActiveRecord::RecordNotFound , with: :render_not_found_errors


def render_unprocessable_entity_response(error)
    render json: { message: error.record.errors.full_messages}, status: :unprocessable_entity
end

def render_not_found_errors
    render json: { message: "Record Not Found"}, status: :not_found
end


end
