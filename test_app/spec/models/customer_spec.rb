require 'rails_helper'

RSpec.describe Customer, type: :model do
  # fixtures :customers
  fixtures :all

  it "Create a Customer" do
    customer = customers(:vinicius)

    expect(customer.full_name).to eq("Sr. Vinicius") 
  end
end
