class Event < ActiveRecord::Base
  has_and_belongs_to_many :users

  def timestamp=(t)
    self.time = Time.at t
  end

  def timestamp
    time.to_i
  end
end
