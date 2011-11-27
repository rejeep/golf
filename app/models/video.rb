class Video < ActiveRecord::Base
  attr_accessor :movie

  belongs_to :user

  validates :title, :movie, :presence => true
  
  acts_as_taggable


  def upload_video(file)
    video = $youtube_client.video_upload(file, :title => title, :description => description, :category => 'Sports', :keywords => tag_list)
    if youtube_id = video.unique_id.presence
      update_attribute(:youtube_id, youtube_id)
    end
  end

  def delete_video!
    $youtube_client.video_delete(youtube_id)
  end
  before_destroy :delete_video!
end
