program BuildACar;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  UCarBuilder in 'UCarBuilder.pas';

var
  CarBuilder: TCarBuilder;
  Car: TCar;

begin
  try
    CarBuilder := TCarBuilder.Create;

    Car := CarBuilder
      .WithKw(100)
      .WithPs(136)
      .Build;

    Writeln(Car.Kw, Car.Ps);
  finally
    CarBuilder.Free;
  end;
end.
