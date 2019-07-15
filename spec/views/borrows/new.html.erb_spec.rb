require 'rails_helper'

RSpec.describe "borrows/new", type: :view do
  before(:each) do
    assign(:borrow, Borrow.new)
  end

  it "renders new borrow form" do
    render

  end
end
