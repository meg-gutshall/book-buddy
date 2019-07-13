require 'rails_helper'

RSpec.describe "borrows/new", type: :view do
  before(:each) do
    assign(:borrow, Borrow.new(
      :renewed => false
    ))
  end

  it "renders new borrow form" do
    render

    assert_select "form[action=?][method=?]", borrows_path, "post" do

      assert_select "input[name=?]", "borrow[renewed]"
    end
  end
end
