class Form < ApplicationRecord
  enum seat: [:table, :counter], _prefix: true

  with_options presence: true do
    validates :last_name_kana, format: { with: /\A[ァ-ヶー－]+\z/, message: 'is invalid. Input full-width characters.' }
    validates :first_name_kana, format: { with: /\A[ァ-ヶー－]+\z/, message: 'is invalid. Input full-width characters.' }
    validates :number_of_people, numericality: { only_integer: true, message: 'is invalid. Input only number' }
    validates :datetime
  end

  VALID_PHONE_REGEX = /\A\d{10}$|^\d{11}\z/
  validates :phone_number, presence: true, format: { with: VALID_PHONE_REGEX }
  validates :phone_number, numericality: { only_integer: true, message: 'is invalid. Input only number' }
end
