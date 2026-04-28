class Customer < ApplicationRecord
    has_many :order
    def full_name
        "Sr. #{name}"
    end
end
