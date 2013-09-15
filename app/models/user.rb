class User < ActiveRecord::Base
  has_and_belongs_to_many :events
  has_many :organizing_events, class_name: 'Event', inverse_of: :organizer

  validates :uuid,  presence: true,
                    uniqueness: true

  def all_events
    OpenStruct.new(
      participating_events: events ,
      organizing_events: organizing_events
    )
  end
end
