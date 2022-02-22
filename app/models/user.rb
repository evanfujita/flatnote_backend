class User < ApplicationRecord
    
    validates :username, presence: true

    has_many :notes, dependent: :destroy
    has_many :tasks, dependent: :destroy
    has_secure_password

end
