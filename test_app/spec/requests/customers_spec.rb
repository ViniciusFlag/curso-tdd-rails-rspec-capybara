require 'rails_helper'

RSpec.describe "Customers", type: :request do
  describe "GET /customers" do
    it "works! (now write some real specs)" do
      get customers_path
      expect(response).to have_http_status(200)
    end

    it "Index - JSON" do
      customer = create(:customer, id: 1, name: "Fulano", email: "fulano@mail.com")
      get "/customers.json"
      expect(response.body).to include_json([
        id: /\d/,
        name: (be_kind_of(String)),
        email: (be_kind_of(String)),
      ])
    end

    it "Show - JSON" do
      customer = create(:customer, id: 1, name: "Fulano", email: "fulano@mail.com")
      get "/customers/1.json"
      expect(response.body).to include_json(
        id: /\d/,
        name: (be_kind_of(String)),
        email: (be_kind_of(String)),
      )
    end

    it "crate - JSON" do 
      member = create(:member)
      login_as(member, scope: :member)

      headers = { "ACCEPT" => "application/json" }

      customers_params = attributes_for(:customer) # vem como hash

      post "/customers", params: { customer: customers_params }, headers: headers

      expect(response.body).to  include_json(
        id: /\d/,
        name: customers_params.fetch(:name),
        email: customers_params.fetch(:email),
      )
    end
  end
end
