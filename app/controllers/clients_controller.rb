class ClientsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    def show 
        client = find_client
        render json: client 
    end

    private
    def find_client 
        Client.find(params[:id])
    end
    def render_not_found_response(exception) render json: { error: "#{exception.model} not found" }, status: :not_found 
    end
end