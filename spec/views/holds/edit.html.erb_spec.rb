require 'rails_helper'

RSpec.describe "holds/edit", type: :view do
  before(:each) do
    @hold = assign(:hold, Hold.create!(
      :borrowed => false
    ))
  end

  it "renders the edit hold form" do
    render

    assert_select "form[action=?][method=?]", hold_path(@hold), "post" do

      assert_select "input[name=?]", "hold[borrowed]"
    end
  end
end
