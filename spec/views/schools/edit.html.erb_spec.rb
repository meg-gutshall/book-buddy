require 'rails_helper'

RSpec.describe "schools/edit", type: :view do
  before(:each) do
    @school = assign(:school, School.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit school form" do
    render

    assert_select "form[action=?][method=?]", school_path(@school), "post" do

      assert_select "input[name=?]", "school[name]"
    end
  end
end
