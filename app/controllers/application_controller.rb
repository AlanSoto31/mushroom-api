class ApplicationController < ActionController::API
    def authenticate
        auth_header = request.headers[:authorization]
        if auth_header 
            token = auth_header.split(" ")[1]
            secret_key = Rails.application.secrets.secret_key_base[0]
            decoded_token = JWT.decode(token, secret_key)[0]
            @user = User.find(decoded_token["user_id"])
        else
            render status: :unauthorized
        end
    end
end
