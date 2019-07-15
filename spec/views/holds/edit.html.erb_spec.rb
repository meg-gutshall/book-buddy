require 'rails_helper'

RSpec.describe "holds/edit", type: :view do
  before(:each) do
    @hold = assign(:hold, Hold.create!(
      :available => false
      :borrowed => false
      :cancelled => false
    ))
  end

  it "renders the edit hold form" do
    render

    assert_select "form[action=?][method=?]", hold_path(@hold), "post" do

      assert_select "input[name=?]", "hold[available]"

      assert_select "input[name=?]", "hold[borrowed]"

      assert_select "input[name=?]", "hold[cancelled]"
    end
  end
end
