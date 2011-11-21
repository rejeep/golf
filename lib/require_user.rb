module RequireUser
  def self.included(base)
    base.extend(AuthenticationMethods)
  end

  module AuthenticationMethods
    def require_user
      layout 'admin'

      before_filter do
        unless user_signed_in?
          render :text => 'Only signed in users can access this page'
        end
      end
    end
  end
end
