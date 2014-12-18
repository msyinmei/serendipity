class User < ActiveRecord::Base
  has_secure_password
  validates :email,
    presence: true,
    uniqueness: true

  has_many :events
  has_many :invites
  has_many :accepted, :through => :invites, :source => :event
end
