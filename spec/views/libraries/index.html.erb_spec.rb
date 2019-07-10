require 'rails_helper'

RSpec.describe "libraries/index", type: :view do
  before(:each) do
    assign(:libraries, [
      Library.create!(
        :school_name => "School Name",
        :location => "Location"
      ),
      Library.create!(
        :school_name => "School Name",
        :location => "Location"
      )
    ])
  end

  it "renders a list of libraries" do
    render
    assert_select "tr>td", :text => "School Name".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
  end
end
