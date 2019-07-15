require 'rails_helper'

RSpec.describe "libraries/index", type: :view do
  before(:each) do
    assign(:libraries, [
      Library.create!(
        :room_number => "Room Number"
      ),
      Library.create!(
        :room_number => "Room Number"
      )
    ])
  end

  it "renders a list of libraries" do
    render
    assert_select "tr>td", :text => "Room Number".to_s, :count => 2
  end
end
