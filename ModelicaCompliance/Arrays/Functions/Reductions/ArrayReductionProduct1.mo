within ModelicaCompliance.Arrays.Functions.Reductions;

model ArrayReductionProduct1
  extends Icons.TestCase;
  
  
  Real  prod; 
equation
  prod = product({3.14, 2, 2}); 
  
  assert(Util.compareReal(prod, 12.56), "The value of prod should be 12.56");
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"10.3.4"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that the array reduction function product is possible.</html>"));
end ArrayReductionProduct1;
