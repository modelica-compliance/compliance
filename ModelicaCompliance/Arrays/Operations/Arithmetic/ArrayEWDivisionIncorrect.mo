within ModelicaCompliance.Arrays.Operations.Arithmetic;

model ArrayEWDivisionIncorrect
  extends Icons.TestCase;
  
  constant Real realArray[2,2] = 12./[1,2;3,4];
  
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false)),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests it is not possible to use array elementwise division since 12. could be a lexical unit; using a space after the literal solves the problem.</html>"));
end ArrayEWDivisionIncorrect;
