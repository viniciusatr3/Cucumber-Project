require 'spec_helper'

describe "basics/new" do
  before(:each) do
    assign(:basic, stub_model(Basic,
      :name => "MyString",
      :necessary_stuff => "MyText",
      :how_to_make => "MyText"
    ).as_new_record)
  end

  it "renders new basic form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", basics_path, "post" do
      assert_select "input#basic_name[name=?]", "basic[name]"
      assert_select "textarea#basic_necessary_stuff[name=?]", "basic[necessary_stuff]"
      assert_select "textarea#basic_how_to_make[name=?]", "basic[how_to_make]"
    end
  end
end
