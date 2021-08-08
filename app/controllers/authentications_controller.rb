class AuthenticationsController < ApplicationController
    def login
        user = User.find_by(name: params[:name])

        if user 
            if user.authenticate(params[:password])
                render json: {message: "Correct password"}, status: :ok
            else
                render json: {error: "Wrong password"}, status: :unauthorized
            end
        else
            render json: {error: "Wrong username"}, status: :unauthorized
        end
    end
end
