within ModelicaCompliance.Classes.Specialized;

model RecordInner
  extends Icons.TestCase;

  record R
    inner Real x = 1.0;
  end R;

  R r;

  annotation (
    __ModelicaAssociation(TestCase(shouldPass = false, section = {"4.6"})),
    experiment(StopTime = 0.01),
    Documentation(
      info = "<html>Checks that elements with inner prefix are not allowed in records.</html>"));
end RecordInner;
