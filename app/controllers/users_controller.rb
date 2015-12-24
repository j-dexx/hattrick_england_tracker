class UsersController < Clearance::UsersController
  def new
    @user = User.from_omniauth(env['omniauth.auth'])
    render template: "users/new"
  end

  private

  def user_params
    params.require(:user).permit(:auth_provider, :auth_uid, :email,
                                 :hattrick_username, :oauth_token,
                                 :oauth_secret, :password)
  end
end
