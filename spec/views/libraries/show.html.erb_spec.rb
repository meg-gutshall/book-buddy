require 'rails_helper'

RSpec.describe "libraries/show", type: :view do
  before(:each) do
    @library = assign(:library, Library.create!(
      :room_number => "Room Number"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Room Number/)
  end
end
