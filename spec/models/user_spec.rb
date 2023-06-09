require 'rails_helper'

RSpec.describe User, type: :model do
  it "assigns full name" do
    user = User.create(email: "foo@bar.com", first_name: "John", last_name: "Doe", country_code: "IE")
    expect(user.full_name).to eq("John Doe")
  end
end
