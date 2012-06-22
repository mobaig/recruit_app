require 'spec_helper'

describe "recruiters/new" do
  before(:each) do
    assign(:recruiter, stub_model(Recruiter).as_new_record)
  end

  it "renders new recruiter form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => recruiters_path, :method => "post" do
    end
  end
end
