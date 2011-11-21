class BlogPost < ActiveRecord::Base
  validates :title, :description, :presence => true
end
