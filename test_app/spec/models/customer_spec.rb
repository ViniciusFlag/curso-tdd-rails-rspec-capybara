require 'rails_helper'

RSpec.describe Customer, type: :model do
  # fixtures :customers
  # fixtures :all

  it "Create a Customer" do
    # customer = customers(:vinicius) # feito com fixture
    # customer = create(:customer) #feito com factories
    customer = create(:user) # feito com aliases
    
    expect(customer.full_name).to start_with("Sr. ") 
  end

  it "Sobrescrever um atibuto" do
    customer = create(:customer, name: "Vinicius")
    expect(customer.full_name).to eq("Sr. Vinicius");
  end

  it { expect{ create(:customer) }.to change { Customer.all.size }.by(1) }
end
