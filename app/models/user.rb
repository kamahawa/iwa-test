class User < ApplicationRecord

  include Swagger::UserSchema

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :rememberable

  enum role: [:Teacher, :Student]

  validates :name, presence: true,
    length: { maximum: 50 }

  # Custom validate
  validates :email,
    presence: true,
    uniqueness: { case_sensitive: true },    
    length: { maximum: 50 },
    format: { with: Devise.email_regexp, allow_blank: true }

  # Validate password
  validates :password, presence: true, on: :create
  validates_length_of :password, within: Devise.password_length, allow_blank: true
  validates :password, confirmation: true, unless: -> { password.blank? }
end
