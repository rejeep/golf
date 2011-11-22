module Admin::UsersHelper
  def role_name(user)
    if user.user?
      'User'
    elsif user.admin?
      'Admin'
    elsif user.super_admin?
      'Super Admin'
    end
  end
end
