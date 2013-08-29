require "spec_helper"

describe Mark do
  it "Criar instancia de Mark" do 
    mark = Mark.new
    mark.should be_instance_of Mark
  end
   
  it "nao permite criar sem nome" do 
    mark = Mark.create()
    mark.should_not be_valid
  end
end
