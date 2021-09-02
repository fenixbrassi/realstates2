module FeaturesHelpers
  def sign_in(user = create(:user))
    visit '/'

    # sign in process
  end

  def sign_up(user = create(:user))
    # sign in process
  end
end
