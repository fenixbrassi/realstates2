RSpec.describe "real states", :type => :request do

  it "list real states" do
    get "/real_states/list"
    expect(response).to render_template(:new)
  end

end
