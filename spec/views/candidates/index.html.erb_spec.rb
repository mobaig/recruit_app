require 'spec_helper'

describe "candidates/index" do
  before(:each) do
    assign(:candidates, [
      stub_model(Candidate,
        :name => "Name",
        :email => "Email",
        :github => "Github",
        :linkedin => "Linkedin",
        :website => "Website"
      ),
      stub_model(Candidate,
        :name => "Name",
        :email => "Email",
        :github => "Github",
        :linkedin => "Linkedin",
        :website => "Website"
      )
    ])
  end

  it "renders a list of candidates" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Github".to_s, :count => 2
    assert_select "tr>td", :text => "Linkedin".to_s, :count => 2
    assert_select "tr>td", :text => "Website".to_s, :count => 2
  end
end
