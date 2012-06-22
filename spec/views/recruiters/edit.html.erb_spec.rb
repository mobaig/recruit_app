require 'spec_helper'

describe "recruiters/edit" do
  before(:each) do
    @recruiter = assign(:recruiter, stub_model(Recruiter))
  end

  it "renders the edit recruiter form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => recruiters_path(@recruiter), :method => "post" do
    end
  end
end
