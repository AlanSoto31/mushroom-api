class AuthenticationsController < ApplicationController
    def login
        user = User.find_by(name: params[:name])

        if user 
            if user.authenticate(params[:password])
                secret_key = Rails.application.secrets.secret_key_base[0]
                token = JWT.encode({
                    user_id: user.id,
                    user_name: user.name,
                }, secret_key)
                render json: {token: token}, status: :ok
            else
                render json: {error: "Wrong password"}, status: :unauthorized
            end
        else
            render json: {error: "Wrong username"}, status: :unauthorized
        end
    end
end
