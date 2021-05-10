class User < ApplicationRecord
    has_many :notes, dependent: :destroy
    has_many :tasks, dependent: :destroy
    has_secure_password
end
