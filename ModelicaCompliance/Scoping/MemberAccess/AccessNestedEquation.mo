within ModelicaCompliance.Scoping.MemberAccess;

model AccessNestedEquation
  extends Icons.TestCase;

  model A
    model B
      model C
        Real x;
      end C;

      C c;
    end B;

    B b;
  end A;

  A a;
equation
  a.b.c.x = 1.0;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = true, section = {"3.6.6"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Tests the member access operator on nested instances in an equation.</html>"));
end AccessNestedEquation;