class UsersController < ApplicationController
  before_action :authenticate_user, except: [:index, :show, :create]
  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      render json: user.to_json(only: [:id, :name, :email]), status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def show
    user = User.find_by(id: params[:id])
    render json: user.to_json(only: [:id, :name, :email])
  end

  def update
    user = User.find_by(id: params[:id])
    if current_user == user
      user.name = params[:name] || user.name
      user.email = params[:email] || user.email
      user.password_digest = params[:password_digest] || user.password_digest
      if user.save
        render json: user.to_json(only: [:id, :name, :email])
      else
        render json: {errors: user.errors.full_messages}, status: :unprocessable_entity
      end
    else
      render json: {}, status: 401
    end
  end

  def destroy
    user = User.find_by(id: params[:id])
    if user == current_user
      user.destroy
      render json: { message: "user deleted!" }
    else
      render json: { errors: "you are not authorized to update this user" }, status: :unauthorized
    end
  end

end