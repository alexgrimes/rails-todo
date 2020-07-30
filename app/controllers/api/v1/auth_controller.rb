class Api::v1::AuthController < ApplicationController
  def create
    user = User.find_by(name: params[:name]
     
    if user && user.athenticate(params[:password])
      payload = {user_id: user.id}
      token= JWT.encode(payload, 'SECRET', 'HS256')  
      
      render json: { id: user.id, name: user.name, token: token}
    else 
      render json: { error: 'Invalid name or password' }, status: 401
  end

  def show
    token = request.headers[:Authorization].split().last
    decoded_token = JWT.decode(token, 'SECRET', true, { algorithm: 'HS256' })
    user_id = decoded_token[0]['user_id']
    user = User.find(user_id)

    if user
      render json: { id: user.id, name: user.name, token: token}
    else
      render json: { error: 'Invalid token' }, status: 401

    end
  end
end 