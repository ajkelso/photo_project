class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
    validates :email, uniqueness: true
    has_many :galleries, dependent: :destroy
    has_many :photos, through: :galleries
end
