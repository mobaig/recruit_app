require 'spec_helper'

describe "agents/index" do
  before(:each) do
    assign(:agents, [
      stub_model(Agent,
        :name => "Name",
        :email => "Email",
        :phone => "Phone",
        :description => "MyText"
      ),
      stub_model(Agent,
        :name => "Name",
        :email => "Email",
        :phone => "Phone",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of agents" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
