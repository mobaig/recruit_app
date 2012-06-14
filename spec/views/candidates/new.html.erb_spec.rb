require 'spec_helper'

describe "candidates/new" do
  before(:each) do
    assign(:candidate, stub_model(Candidate,
      :name => "MyString",
      :email => "MyString",
      :github => "MyString",
      :linkedin => "MyString",
      :website => "MyString"
    ).as_new_record)
  end

  it "renders new candidate form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => candidates_path, :method => "post" do
      assert_select "input#candidate_name", :name => "candidate[name]"
      assert_select "input#candidate_email", :name => "candidate[email]"
      assert_select "input#candidate_github", :name => "candidate[github]"
      assert_select "input#candidate_linkedin", :name => "candidate[linkedin]"
      assert_select "input#candidate_website", :name => "candidate[website]"
    end
  end
end
