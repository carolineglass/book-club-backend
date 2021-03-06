class UsersController < ApplicationController
    before_action :authorized, only: [:stay_logged_in]

    def index
        users = User.all
        render json: users
    end
    
    def create
        @user = User.create(user_params)
        if @user.valid?
            wristband = encode_token({user_id: @user.id})
            render json: {
                user: UserSerializer.new(@user),
                token: wristband
            }
        else
            render json: {message: "Failed to create a new user"}, status: 403
        end
    end
    

    def login
        @user = User.find_by(name: params[:name])
        if @user && @user.authenticate(params[:password])
            wristband = encode_token({user_id: @user.id})
            render json: {user: UserSerializer.new(@user), token: wristband}
        elsif @user && !@user.authenticate(params[:password])
            render json: {message: "Incorrect password"}
        else
            render json: {message: "User not found"}
        end
    end

    def stay_logged_in
        wristband = encode_token({user_id: @user.id})
        render json: {user: UserSerializer.new(@user), token: wristband}
    end

    def edit
    
    end
    
    def update
    
    end
    
    def show
    
    end
    
    def destroy
    
    end

    private

    def user_params
        params.permit(:name, :password, :image)
    end

end
