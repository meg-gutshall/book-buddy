require 'rails_helper'

RSpec.describe "holds/index", type: :view do
  before(:each) do
    assign(:holds, [
      Hold.create!(
        :available => false
        :borrowed => false
        :cancelled => false
      ),
      Hold.create!(
        :available => false
        :borrowed => false
        :cancelled => false
      )
    ])
  end

  it "renders a list of holds" do
    render
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
