require 'rails_helper'

RSpec.describe "Customers", type: :request do
  describe "GET /customers" do
    it "works! (now write some real specs)" do
      get customers_path
      expect(response).to have_http_status(200)
    end

    it "Index - JSON 200 ok" do
      customer = create(:customer, id: 1, name: "Fulano", email: "fulano@mail.com")
      get "/customers.json"
      expect(response).to have_http_status(200)
      expect(response.body).to include_json([
        id: 1,
        name: "Fulano",
        email: "fulano@mail.com",
      ])
    end

    it "Show - JSON 200 ok" do
      customer = create(:customer, id: 1, name: "Fulano", email: "fulano@mail.com")
      get "/customers/1.json"
      expect(response).to have_http_status(200)
      expect(response.body).to include_json(
        id: 1
      )
    end
  end
end
