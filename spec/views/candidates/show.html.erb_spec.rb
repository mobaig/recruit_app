require 'spec_helper'

describe "candidates/show" do
  before(:each) do
    @candidate = assign(:candidate, stub_model(Candidate,
      :name => "Name",
      :email => "Email",
      :github => "Github",
      :linkedin => "Linkedin",
      :website => "Website"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Email/)
    rendered.should match(/Github/)
    rendered.should match(/Linkedin/)
    rendered.should match(/Website/)
  end
end
