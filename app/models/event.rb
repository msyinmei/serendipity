class Event < ActiveRecord::Base
  belongs_to :host, :class_name => "User", :foreign_key => "user_id"
  has_many :invites
  has_many :attendees, :through => :invites, :source => :user
end
