class User < ActiveRecord::Base
  has_many :events
  has_many :invites
  has_many :accepted, :through => :invites, :source => :event
end
