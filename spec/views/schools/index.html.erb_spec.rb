require 'rails_helper'

RSpec.describe "schools/index", type: :view do
  before(:each) do
    assign(:schools, [
      School.create!(
        :location => "Location"
      ),
      School.create!(
        :location => "Location"
      )
    ])
  end

  it "renders a list of schools" do
    render
    assert_select "tr>td", :text => "Location".to_s, :count => 2
  end
end
