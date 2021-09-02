#require 'test_helper'
require 'rails_helper'

# class RealStateTest < ActiveSupport::TestCase
#   # test "the truth" do
#   #   assert true
#   # end
#   test "should not save real state without name" do
#     real_state = RealState.new
#     assert !real_state.save
#   end
#
#   test "getting index real state" do
#     get "/real_states/list"
#     actual = JSON.parse(response.body, symbolize_names: true)
#     expected = { foo: "bar" }
#     expect(actual).to eq expected
#   end
# end

it "responds with JSON" do
  my_model = stub_model(MyModel,:save=>true)
  MyModel.stub(:new).with({'these' => 'params'}) { my_model }
  post :create, :my_model => {'these' => 'params'}, :format => :json
  response.body.should == my_model.to_json
end
