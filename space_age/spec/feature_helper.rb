module FeatureHelper
  def admin_login
    visit login_path
    fill_in "Username", with: "adminor"
    fill_in "Password", with: "password"
    click_button "Sign In"
  end

end
