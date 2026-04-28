FactoryBot.define do
  factory :order do
    sequence(:description) { |n| "Pedido numer - #{n}" }
    association :customer, factory: :customer # ou customer
  end
end
