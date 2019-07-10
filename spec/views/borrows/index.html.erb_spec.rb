require 'rails_helper'

RSpec.describe "borrows/index", type: :view do
  before(:each) do
    assign(:borrows, [
      Borrow.create!(
        :renewal => false
      ),
      Borrow.create!(
        :renewal => false
      )
    ])
  end

  it "renders a list of borrows" do
    render
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
