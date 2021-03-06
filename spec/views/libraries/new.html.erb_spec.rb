require 'rails_helper'

RSpec.describe "libraries/new", type: :view do
  before(:each) do
    assign(:library, Library.new(
      :room => "MyString"
    ))
  end

  it "renders new library form" do
    render

    assert_select "form[action=?][method=?]", libraries_path, "post" do

      assert_select "input[name=?]", "library[room]"
    end
  end
end
