require 'spec_helper'

describe "services/new" do
  before(:each) do
    assign(:service, stub_model(Service,
      :nome => "MyString",
      :descricao => "MyString",
      :valor => "9.99"
    ).as_new_record)
  end

  it "renders new service form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", services_path, "post" do
      assert_select "input#service_nome[name=?]", "service[nome]"
      assert_select "input#service_descricao[name=?]", "service[descricao]"
      assert_select "input#service_valor[name=?]", "service[valor]"
    end
  end
end
