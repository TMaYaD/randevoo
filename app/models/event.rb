class Event < ActiveRecord::Base
  def timestamp=(t)
    self.time = Time.at t
  end

  def timestamp
    time.to_i
  end
end
