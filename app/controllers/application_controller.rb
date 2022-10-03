class ApplicationController < ActionController::API
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def render_unprocessable_entity_response(e)
        render json: { errors: e.record.errors}, status: :unprocessable_entity
      end

end
