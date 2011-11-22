class Video < ActiveRecord::Base
  attr_accessor :movie

  belongs_to :user
  belongs_to :event

  validates :title, :event, :movie, :presence => true


  def upload_video(file)
    video = $youtube_client.video_upload(file, :title => title, :description => description, :category => 'Sports', :keywords => %w[golf])
    if youtube_id = video.unique_id.presence
      update_attribute(:youtube_id, youtube_id)
    end
  end

  def delete_video!
    $youtube_client.video_delete(youtube_id)
  end
  before_destroy :delete_video!
end
