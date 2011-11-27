class User < ActiveRecord::Base
  devise :database_authenticatable, :rpx_connectable

  has_many :photos
  has_many :videos
  has_many :blog_posts

  def name
    "#{first_name} #{last_name}"
  end

  def name?
    first_name.present? && last_name.present?
  end

  def user?
    role.blank?
  end

  def admin?
    role == 'admin'
  end

  def super_admin?
    role == 'super_admin'
  end

  def promote!
    if user?
      update_attribute(:role, 'admin')
    elsif admin?
      update_attribute(:role, 'super_admin')
    end
  end

  def degrade!
    if admin?
      update_attribute(:role, nil)
    elsif super_admin?
      update_attribute(:role, 'admin')
    end
  end
end
