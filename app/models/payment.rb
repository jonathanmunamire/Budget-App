class Payment < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_and_belongs_to_many :groups

  validates :name, :amount, :author_id, presence: true
  validates :amount, numericality: { greater_than_or_equal_to: 0 }
end
