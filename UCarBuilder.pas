unit UCarBuilder;

interface
type
  TCar = class
  private
    FKw: Double;
    FPs: Double;
    FBrand: string;
    FModel: string;
    FColor: string;
    FDoors: Integer;
    FSeats: Integer;
    FYear: Integer;
    FPrice: Integer;
    FEngine: string;
    FGearbox: string;
    FFuel: string;
    FDrive: string;
  public
    property Kw: Double read FKw write FKw;
    property Ps: Double read FPs write FPs;
    property Brand: string read FBrand write FBrand;
    property Model: string read FModel write FModel;
    property Color: string read FColor write FColor;
    property Doors: Integer read FDoors write FDoors;
    property Seats: Integer read FSeats write FSeats;
    property Year: Integer read FYear write FYear;
    property Price: Integer read FPrice write FPrice;
    property Engine: string read FEngine write FEngine;
    property Gearbox: string read FGearbox write FGearbox;
    property Fuel: string read FFuel write FFuel;
    property Drive: string read FDrive write FDrive;
  end;

  TCarBuilder = class
  private
    FCar: TCar;
  public
    constructor Create;
    destructor Destroy; override;
    function WithKw(Value: Double): TCarBuilder;
    function WithPs(Value: Double): TCarBuilder;
    function WithBrand(Value: string): TCarBuilder;
    function WithModel(Value: string): TCarBuilder;
    function WithColor(Value: string): TCarBuilder;
    function WithDoors(Value: Integer): TCarBuilder;
    function WithSeats(Value: Integer): TCarBuilder;
    function WithYear(Value: Integer): TCarBuilder;
    function WithPrice(Value: Integer): TCarBuilder;
    function WithEngine(Value: string): TCarBuilder;
    function WithGearbox(Value: string): TCarBuilder;
    function WithFuel(Value: string): TCarBuilder;
    function WithDrive(Value: string): TCarBuilder;
    function Build: TCar;
  end;

implementation

constructor TCarBuilder.Create;
begin
  inherited;
  FCar := TCar.Create;
end;

destructor TCarBuilder.Destroy;
begin
  FCar.Free;
  inherited;
end;

function TCarBuilder.WithKw(Value: Double): TCarBuilder;
begin
  FCar.Kw := Value;
  Result := Self;
end;

function TCarBuilder.WithPs(Value: Double): TCarBuilder;
begin
  FCar.Ps := Value;
  Result := Self;
end;

function TCarBuilder.WithBrand(Value: string): TCarBuilder;
begin
  FCar.Brand := Value;
  Result := Self;
end;

function TCarBuilder.WithModel(Value: string): TCarBuilder;
begin
  FCar.Model := Value;
  Result := Self;
end;

function TCarBuilder.WithColor(Value: string): TCarBuilder;
begin
  FCar.Color := Value;
  Result := Self;
end;

function TCarBuilder.WithDoors(Value: Integer): TCarBuilder;
begin
  FCar.Doors := Value;
  Result := Self;
end;

function TCarBuilder.WithSeats(Value: Integer): TCarBuilder;
begin
  FCar.Seats := Value;
  Result := Self;
end;

function TCarBuilder.WithYear(Value: Integer): TCarBuilder;
begin
  FCar.Year := Value;
  Result := Self;
end;

function TCarBuilder.WithPrice(Value: Integer): TCarBuilder;
begin
  FCar.Price := Value;
  Result := Self;
end;

function TCarBuilder.WithEngine(Value: string): TCarBuilder;
begin
  FCar.Engine := Value;
  Result := Self;
end;

function TCarBuilder.WithGearbox(Value: string): TCarBuilder;
begin
  FCar.Gearbox := Value;
  Result := Self;
end;

function TCarBuilder.WithFuel(Value: string): TCarBuilder;
begin
  FCar.Fuel := Value;
  Result := Self;
end;

function TCarBuilder.WithDrive(Value: string): TCarBuilder;
begin
  FCar.Drive := Value;
  Result := Self;
end;

function TCarBuilder.Build: TCar;
begin
  Result := FCar;
end;

end.
