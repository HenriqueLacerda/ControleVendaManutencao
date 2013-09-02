require 'spec_helper'

describe "sales/edit" do
  before(:each) do
    @sale = assign(:sale, stub_model(Sale,
      :customer => nil,
      :clienteNome => "MyString",
      :clienteEndereco => "MyString",
      :clienteNumero => "MyString",
      :clienteBairro => "MyString",
      :clienteCidade => "MyString",
      :clienteEstado => "MyString",
      :clienteCep => "MyString",
      :valorTotalProdutos => "MyString",
      :valorDescontoVenda => "MyString",
      :valorTotalVenda => "MyString"
    ))
  end

  it "renders the edit sale form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sale_path(@sale), "post" do
      assert_select "input#sale_customer[name=?]", "sale[customer]"
      assert_select "input#sale_clienteNome[name=?]", "sale[clienteNome]"
      assert_select "input#sale_clienteEndereco[name=?]", "sale[clienteEndereco]"
      assert_select "input#sale_clienteNumero[name=?]", "sale[clienteNumero]"
      assert_select "input#sale_clienteBairro[name=?]", "sale[clienteBairro]"
      assert_select "input#sale_clienteCidade[name=?]", "sale[clienteCidade]"
      assert_select "input#sale_clienteEstado[name=?]", "sale[clienteEstado]"
      assert_select "input#sale_clienteCep[name=?]", "sale[clienteCep]"
      assert_select "input#sale_valorTotalProdutos[name=?]", "sale[valorTotalProdutos]"
      assert_select "input#sale_valorDescontoVenda[name=?]", "sale[valorDescontoVenda]"
      assert_select "input#sale_valorTotalVenda[name=?]", "sale[valorTotalVenda]"
    end
  end
end
