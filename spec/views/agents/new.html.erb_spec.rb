require 'spec_helper'

describe "agents/new" do
  before(:each) do
    assign(:agent, stub_model(Agent,
      :name => "MyString",
      :email => "MyString",
      :phone => "MyString",
      :description => "MyText"
    ).as_new_record)
  end

  it "renders new agent form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => agents_path, :method => "post" do
      assert_select "input#agent_name", :name => "agent[name]"
      assert_select "input#agent_email", :name => "agent[email]"
      assert_select "input#agent_phone", :name => "agent[phone]"
      assert_select "textarea#agent_description", :name => "agent[description]"
    end
  end
end
