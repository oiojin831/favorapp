require "rails_helper"

describe HomesController do
  it "redirects to favor index if the visitor is logged in" do
    sign_in

    get :show

    expect(response).to redirect_to favors_path
  end
end
