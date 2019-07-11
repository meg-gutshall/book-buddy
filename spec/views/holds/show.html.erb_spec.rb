require 'rails_helper'

RSpec.describe "holds/show", type: :view do
  before(:each) do
    @hold = assign(:hold, Hold.create!(
      :borrowed => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/false/)
  end
end
