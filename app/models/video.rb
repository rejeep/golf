class Video < ActiveRecord::Base
  include Taggable

  belongs_to :user

  validates :title, :movie, :presence => true
  
  mount_uploader :movie, MovieUploader


  if Rails.env.production?
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
  else
    def upload_video(file)
    end
  end
end
