describe "Test Double" do
    it "--" do
        # user = double
        user = double("User") # identificação do double

        # allow(user).to receive_messages(name: "Vinicius", password: "secret")
        allow(user).to receive(:name).and_return("Vinicius")
        allow(user).to receive(:password).and_return("secret")
        user.name
        user.password
    end
end