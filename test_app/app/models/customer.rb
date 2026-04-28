class Customer < ApplicationRecord
    has_many :order
    validates :address, presence: true
    def full_name
        "Sr. #{name}"
    end
end
