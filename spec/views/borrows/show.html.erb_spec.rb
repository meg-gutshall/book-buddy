require 'rails_helper'

RSpec.describe "borrows/show", type: :view do
  before(:each) do
    @borrow = assign(:borrow, Borrow.create!(
      :renewed => false,
      :returned => false,
      :overdue => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/false/)
  end
end
