class User < ActiveRecord::Base
  has_and_belongs_to_many :events

  validates :uuid,  presence: true,
                    uniqueness: true
end
