require 'rails_helper'

RSpec.describe "Users", type: :request do
  it "shows a list of users" do
    get "/users"

    expect(response).to be_successful
  end
end
