module Taggable
  def self.included(base)
    base.send(:include, InstanceMethods)
    base.acts_as_taggable
  end

  module InstanceMethods
    ##
    # TODO:
    #
    # Should be able to do this:
    #   self.tag_ids = ids.split(',')
    #
    # But fails on ActsAsTaggableOn::Tagging#context validation
    #
    def tag_list_ids=(ids)
      self.tags = []

      ids.split(',').each do |id|
        tagging = ActsAsTaggableOn::Tagging.new
        tagging.tag_id = id
        tagging.taggable = self
        tagging.context = 'tags'
        tagging.save!
      end

      self.save
    end
    attr_reader :tag_list_ids
  end
end
