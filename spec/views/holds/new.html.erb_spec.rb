require 'rails_helper'

RSpec.describe "holds/new", type: :view do
  before(:each) do
    assign(:hold, Hold.new(
      :available => false
      :borrowed => false
      :cancelled => false
    ))
  end

  it "renders new hold form" do
    render

    assert_select "form[action=?][method=?]", holds_path, "post" do

      assert_select "input[name=?]", "hold[available]"

      assert_select "input[name=?]", "hold[borrowed]"

      assert_select "input[name=?]", "hold[cancelled]"
    end
  end
end
