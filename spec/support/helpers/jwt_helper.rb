module JWTHelper

  def decode_jwt_token_from_response(response)
    jwt_token = response.header['Authorization'].split('Bearer ')[1]
    JWT.decode(jwt_token, ENV['DEVISE_JWT_SECRET_KEY'])
  end

end
