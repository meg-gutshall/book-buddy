require 'rails_helper'

RSpec.describe "libraries/index", type: :view do
  before(:each) do
    assign(:libraries, [
      Library.create!(
        :room => "Room"
      ),
      Library.create!(
        :room => "Room"
      )
    ])
  end

  it "renders a list of libraries" do
    render
    assert_select "tr>td", :text => "Room".to_s, :count => 2
  end
end
