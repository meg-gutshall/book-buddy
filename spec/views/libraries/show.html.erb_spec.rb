require 'rails_helper'

RSpec.describe "libraries/show", type: :view do
  before(:each) do
    @library = assign(:library, Library.create!(
      :school_name => "School Name",
      :location => "Location"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/School Name/)
    expect(rendered).to match(/Location/)
  end
end
