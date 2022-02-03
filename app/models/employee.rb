class Employee < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :employee_num, format: { with: /\A[a-z0-9]+\z/, message: 'is invalid. Include both letters and numbers.'}
    validates :name
    validates :one_thing
  end

  PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze
  validates_format_of :password, with: PASSWORD_REGEX, message: 'is invalid. Include both letters and numbers.'

end
