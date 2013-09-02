require 'spec_helper'

describe "sales/index" do
  before(:each) do
    assign(:sales, [
      stub_model(Sale,
        :customer => nil,
        :clienteNome => "Cliente Nome",
        :clienteEndereco => "Cliente Endereco",
        :clienteNumero => "Cliente Numero",
        :clienteBairro => "Cliente Bairro",
        :clienteCidade => "Cliente Cidade",
        :clienteEstado => "Cliente Estado",
        :clienteCep => "Cliente Cep",
        :valorTotalProdutos => "Valor Total Produtos",
        :valorDescontoVenda => "Valor Desconto Venda",
        :valorTotalVenda => "Valor Total Venda"
      ),
      stub_model(Sale,
        :customer => nil,
        :clienteNome => "Cliente Nome",
        :clienteEndereco => "Cliente Endereco",
        :clienteNumero => "Cliente Numero",
        :clienteBairro => "Cliente Bairro",
        :clienteCidade => "Cliente Cidade",
        :clienteEstado => "Cliente Estado",
        :clienteCep => "Cliente Cep",
        :valorTotalProdutos => "Valor Total Produtos",
        :valorDescontoVenda => "Valor Desconto Venda",
        :valorTotalVenda => "Valor Total Venda"
      )
    ])
  end

  it "renders a list of sales" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Cliente Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Cliente Endereco".to_s, :count => 2
    assert_select "tr>td", :text => "Cliente Numero".to_s, :count => 2
    assert_select "tr>td", :text => "Cliente Bairro".to_s, :count => 2
    assert_select "tr>td", :text => "Cliente Cidade".to_s, :count => 2
    assert_select "tr>td", :text => "Cliente Estado".to_s, :count => 2
    assert_select "tr>td", :text => "Cliente Cep".to_s, :count => 2
    assert_select "tr>td", :text => "Valor Total Produtos".to_s, :count => 2
    assert_select "tr>td", :text => "Valor Desconto Venda".to_s, :count => 2
    assert_select "tr>td", :text => "Valor Total Venda".to_s, :count => 2
  end
end
