module ApplicationHelper
  def login_helper
    if current_user.is_a?(User) 
      (link_to 'Account', edit_user_registration_path) + (" ") + 
      (link_to 'Log out', destroy_user_session_path, method: :delete) 
    else 
      (link_to 'Log in', new_user_session_path ) + (" ") + 
      (link_to 'Register', new_user_registration_path) 
    end 
  end
end
