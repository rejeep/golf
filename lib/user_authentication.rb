module UserAuthentication
  class UnauthorizedError < StandardError
    def message
      'You are not authorized to visit this page'
    end
  end
  
  def self.included(base)
    base.extend(AuthenticationMethods)
  end

  module AuthenticationMethods
    def require_admin
      include InstanceMethods

      layout 'admin'

      before_filter do
        access_denied! unless user_signed_in?

        unless current_user.admin? || current_user.super_admin?
          access_denied!
        end
      end
    end

    def require_super_admin
      include InstanceMethods

      layout 'admin'

      before_filter do
        unless user_signed_in? && current_user.super_admin?
          access_denied!
        end
      end
    end


    module InstanceMethods
      def access_denied!
        raise UnauthorizedError
      end
    end
  end
end
