require 'rails_helper'

RSpec.describe Customer, type: :model do
  # fixtures :customers
  # fixtures :all

  it "Create a Customer" do
    # customer = customers(:vinicius) # feito com fixture
    customer = create(:customer) #feito com factories

    expect(customer.full_name).to eq("Sr. Vinicius") 
  end
end
