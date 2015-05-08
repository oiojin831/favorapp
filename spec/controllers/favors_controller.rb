require "rails_helper"

describe FavorsController do
  describe "#create" do
    context "signed in" do
      it "creates a favor" do
        favor_params = attributes_for(:favor)
        favor = build_stubbed(:favor)

        post :create, favor: favor_params
      end
    end
  end

end
