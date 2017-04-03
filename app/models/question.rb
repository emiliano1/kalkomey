class Question < ActiveRecord::Base
  extend FriendlyId

  friendly_id :title, use: [:slugged, :finders]
  acts_as_taggable

  def next
    self.class.where('id > ?', id).first
  end

  def previous
    self.class.where('id < ?', id).last
  end
end
