class Petition < ApplicationRecord
  include AASM
  VOUTE_SIZE = 100

  belongs_to :user
  acts_as_votable

  validates :title, presence: true, length: { minimum: 4, maximum: 255 }
  validates :description, presence: true, length: { minimum: 1, maximum: 10000 }
  validates :user_id, presence: true

  after_commit :check_voute_size

  aasm column: 'state' do
    state :vouting, initial: true
    state :declined
    state :complited
    state :waiting

    event :complite do
      transitions from: :waiting, to: :complited
    end
    event :wait do
      transitions from: :vouting, to: :waiting
    end
    event :decline do
      transitions from: :vouting, to: :declined
    end

  end

  private

  def check_voute_size
    wait! if (get_upvotes.size >= VOUTE_SIZE && !waiting?)
  end
end
