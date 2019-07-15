require 'rails_helper'

RSpec.describe "borrows/edit", type: :view do
  before(:each) do
    @borrow = assign(:borrow, Borrow.create!)
  end

  it "renders the edit borrow form" do
    render

  end
end
