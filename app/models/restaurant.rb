class Restaurant < ApplicationRecord
  validates :name, :address, :phone_number, :category, presence: true
  validates :category, acceptance: { accept: ["chinese", "italian", "japanese", "french", "belgian"] }
  has_many :reviews, dependent: :destroy
end
