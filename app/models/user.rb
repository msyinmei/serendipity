class User < ActiveRecord::Base
  has_many :events
  # has_many :attendances
  # has_many :accepted, :through => :attendances, :source => :events
end

# user = User.find_by_name("yin")
# user.events;
