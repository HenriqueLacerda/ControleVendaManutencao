require 'spec_helper'

describe "sales/show" do
  before(:each) do
    @sale = assign(:sale, stub_model(Sale,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/Cliente Nome/)
    rendered.should match(/Cliente Endereco/)
    rendered.should match(/Cliente Numero/)
    rendered.should match(/Cliente Bairro/)
    rendered.should match(/Cliente Cidade/)
    rendered.should match(/Cliente Estado/)
    rendered.should match(/Cliente Cep/)
    rendered.should match(/Valor Total Produtos/)
    rendered.should match(/Valor Desconto Venda/)
    rendered.should match(/Valor Total Venda/)
  end
end
