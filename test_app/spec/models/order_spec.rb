require 'rails_helper'

RSpec.describe Order, type: :model do
  it "Tem 1 pedido - belongs_to" do
    customer = create(:customer)
    order = create(:order, customer: customer)
    p order
    expect(order.customer).to  be_kind_of(Customer)
  end

  it "Lista de pedidos - Create list" do
    orders = create_list(:order, 3)
    expect(orders.count).to eq(3) 
  end

  it "Lista de pedidos - has many" do
    customer = create(:customer, :with_orders, qtt_orders: 5)
    puts customer.inspect
    puts customer.order.inspect
    expect(customer.order.count).to  eq(5)
  end
end
