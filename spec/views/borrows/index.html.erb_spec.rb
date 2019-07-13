require 'rails_helper'

RSpec.describe "borrows/index", type: :view do
  before(:each) do
    assign(:borrows, [
      Borrow.create!(
        :renewed => false
      ),
      Borrow.create!(
        :renewed => false
      )
    ])
  end

  it "renders a list of borrows" do
    render
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
