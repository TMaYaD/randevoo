class Event < ActiveRecord::Base
  belongs_to :organizer, class_name: 'User', inverse_of: :organizing_events
  has_and_belongs_to_many :users

  def timestamp=(t)
    self.time = Time.at t
  end

  def timestamp
    time.to_i
  end

  def organizer_uuid=(uuid)
    self.organizer = User.where(uuid: uuid).first_or_create
  end

  def guests=(guests)
    self.users = guests.map { |guest| User.where(uuid: guest[:uuid]).first_or_create(name: guest[:name]) }
  end
end

