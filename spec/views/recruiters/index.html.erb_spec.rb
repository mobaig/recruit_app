require 'spec_helper'

describe "recruiters/index" do
  before(:each) do
    assign(:recruiters, [
      stub_model(Recruiter),
      stub_model(Recruiter)
    ])
  end

  it "renders a list of recruiters" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
