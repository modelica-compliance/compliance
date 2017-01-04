within ModelicaCompliance.Functions.Derivative;

model PartialDerivative
  extends Icons.TestCase;

  function Gibbs
    input Real p;
    input Real T;
    output Real g;
  algorithm
    g := p - T;
  end Gibbs;

  function Gibbs_T = der(Gibbs, T);

  function specificEnthalpy
    input Real p;
    input Real T;
    output Real h;
  algorithm
    h := Gibbs(p, T) - T * Gibbs_T(p, T);
  end specificEnthalpy;

  Real h = specificEnthalpy(23.4, 4.2);

equation
  assert(integer(h) == 23, "h was not set to the correct value!");
  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"12.7.2"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the declaration of partial derivatives of functions.</html>"));
end PartialDerivative;
