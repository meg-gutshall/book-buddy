require 'rails_helper'

RSpec.describe "holds/index", type: :view do
  before(:each) do
    assign(:holds, [
      Hold.create!(
        :borrowed => false
      ),
      Hold.create!(
        :borrowed => false
      )
    ])
  end

  it "renders a list of holds" do
    render
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
