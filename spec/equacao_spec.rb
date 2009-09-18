require 'lib/equacao.rb'

describe Equacao do
  
  it 'essa equacao deve ser invalida' do
    eq = Equacao.new(0,2,8)
    eq.valido?.should be_false
    eq = Equacao.new(1,2,8)  
    eq.valido?.should be_false 
  end

  it 'deve lançar uma exceção com valores invalidos' do
    lambda { eq = Equacao.new([9], "cairo", nil) }.should raise_error
    lambda { eq = Equacao.new(0,2,8).raizes }.should raise_error
  end

  it 'essa equacao deve ser valida' do
    eq = Equacao.new(-1,2,8)
    eq.valido?.should be_true 
  end

  it 'raizes devem ser -2 e 4' do
    eq = Equacao.new(-1,2,8)
    eq.raizes.should == [-2,4]
  end

  it 'raizes deve retornar apenas um array com o valor -1' do 
    eq = Equacao.new(1,2,1)
    eq.raizes.should == [-1]
  end

  it "delta deve retornar um valor correto" do
    eq = Equacao.new(-1,2,8)
    eq.delta.should == 36
  end

end
