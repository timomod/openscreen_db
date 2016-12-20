class ProgramItem < ActiveRecord::Base
validates :event, :film, presence: true
validates :film, uniqueness: {scope: :event }

  belongs_to :event
  belongs_to :film
end
