class User < ApplicationRecord
    validates :username, :session_token, uniqueness: true, presence: true
    validates :password_digest, presence: true
    validates :password, length: { minimum: 6 }, allow_nil: true

    attr_reader :password

    before_validation :ensure_session_token
end
