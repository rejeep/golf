class User < ActiveRecord::Base
  devise :database_authenticatable, :rpx_connectable

  has_many :photos, :dependent => :destroy 
  has_many :videos, :dependent => :destroy 
  has_many :blog_posts, :dependent => :destroy

  def name
    "#{first_name} #{last_name}"
  end

  def name?
    first_name.present? && last_name.present?
  end
  
  def self.search(query)
    User.where('LOWER(first_name) LIKE ? OR LOWER(last_name) LIKE ?', "%#{query.downcase}%", "%#{query.downcase}%")
  end
end
