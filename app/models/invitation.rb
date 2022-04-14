class Invitation < ApplicationRecord
    validates :customer_email, presence: true
end
