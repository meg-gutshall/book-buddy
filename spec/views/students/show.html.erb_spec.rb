require 'rails_helper'

RSpec.describe "students/show", type: :view do
  before(:each) do
    @student = assign(:student, Student.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :email => "Email",
      :password => "Password"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Password/)
  end
end
