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

  it "herança" do
    customer = create(:customer_default)
    
    expect(customer.vip).to eq(false)
  end

  it "Attibuters_for" do
    attr = attributes_for(:customer)
    attr2 = attributes_for(:customer_vip)
    attr3 = attributes_for(:customer_default)

    customer = Customer.create(attr)
    expect(customer.full_name).to start_with("Sr. ") 
  end
  
  it "Sobrescrever um atibuto" do
    customer = create(:customer, name: "Vinicius")
    expect(customer.full_name).to eq("Sr. Vinicius");
  end

  it { expect{ create(:customer) }.to change { Customer.all.size }.by(1) }
end
