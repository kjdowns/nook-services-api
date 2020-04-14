class User < ApplicationRecord
    has_secure_password
    has_many :bugs
    has_many :fish
end
