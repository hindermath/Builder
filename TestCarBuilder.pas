unit TestCarBuilder;

interface

uses
  DUnitX.TestFramework,
  UCarBuilder
  ;

type
  [TestFixture]
  TMyTestCarBuilder = class
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    // Sample Methods
    // Simple single Test
    [Test]
    procedure Test1;
    // Test with TestCase Attribute to supply parameters.
    [Test]
    [TestCase('TestA','1,2')]
    [TestCase('TestB','3,4')]
    procedure Test2(const AValue1 : Integer;const AValue2 : Integer);
    [Test]
    [TestCase('CarTest1','100')]
    procedure CarBuilder(const AValue: Double);
  end;

implementation
var
  MyCarBuilder: TCarBuilder;
  MyCar: TCar;

procedure TMyTestCarBuilder.Setup;
begin
  MyCarBuilder := TCarBuilder.Create;
end;

procedure TMyTestCarBuilder.TearDown;
begin
  MyCarBuilder.Free;
end;

procedure TMyTestCarBuilder.Test1;
begin
end;

procedure TMyTestCarBuilder.Test2(const AValue1 : Integer;const AValue2 : Integer);
begin
end;

procedure TMyTestCarBuilder.CarBuilder(const AValue: Double);
begin
  MyCar := MyCarBuilder
    .WithKw(AValue)
    .Build;
  Assert.AreEqual(AValue, MyCar.Kw,'What''s going wrong?');
end;

initialization
  TDUnitX.RegisterTestFixture(TMyTestCarBuilder);

end.
