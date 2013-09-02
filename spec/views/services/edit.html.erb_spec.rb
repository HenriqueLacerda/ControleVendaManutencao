require 'spec_helper'

describe "services/edit" do
  before(:each) do
    @service = assign(:service, stub_model(Service,
      :nome => "MyString",
      :descricao => "MyString",
      :valor => "9.99"
    ))
  end

  it "renders the edit service form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", service_path(@service), "post" do
      assert_select "input#service_nome[name=?]", "service[nome]"
      assert_select "input#service_descricao[name=?]", "service[descricao]"
      assert_select "input#service_valor[name=?]", "service[valor]"
    end
  end
end
