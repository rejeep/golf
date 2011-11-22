$youtube_client = YouTubeIt::Client.new(:username => ENV['YOUTUBE_USERNAME'],
                                        :password => ENV['YOUTUBE_PASSWORD'],
                                        :dev_key  => ENV['YOUTUBE_DEV_KEY'])
