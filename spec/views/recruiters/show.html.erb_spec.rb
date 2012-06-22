require 'spec_helper'

describe "recruiters/show" do
  before(:each) do
    @recruiter = assign(:recruiter, stub_model(Recruiter))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
