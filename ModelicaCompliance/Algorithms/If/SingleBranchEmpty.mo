within ModelicaCompliance.Algorithms.If;

model SingleBranchEmpty
  extends Icons.TestCase;

  Real x = 3.0;
  parameter Integer i = 4;
algorithm
  if i == 4 then
  end if;

  assert(Util.compareReal(x, 3.0), "x was not set correctly.");

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"11.2.6"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests that an if-statement can consist of a single branch.</html>"));
end SingleBranchEmpty;
