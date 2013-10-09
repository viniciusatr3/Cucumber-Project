require 'spec_helper'

describe "basics/edit" do
  before(:each) do
    @basic = assign(:basic, stub_model(Basic,
      :name => "MyString",
      :necessary_stuff => "MyText",
      :how_to_make => "MyText"
    ))
  end

  it "renders the edit basic form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", basic_path(@basic), "post" do
      assert_select "input#basic_name[name=?]", "basic[name]"
      assert_select "textarea#basic_necessary_stuff[name=?]", "basic[necessary_stuff]"
      assert_select "textarea#basic_how_to_make[name=?]", "basic[how_to_make]"
    end
  end
end
