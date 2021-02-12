unit Classe.Calculadora;

interface

uses
  Controls, System.Generics.Collections, Calculadora.Interfaces,
  Calculadora.Helpers, Calculadora.Dividir, Calculadora.Multiplicar,
  Calculadora.Soma, Calculadora.Subtrair;

type
  TCalculadora = class(TInterfacedObject, iCalculadora)
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iCalculadora;
    function Soma: iOperacoes;
    function Subtrair: iOperacoes;
    function Dividir: iOperacoes;
    function Multiplicar: iOperacoes;
  end;

implementation

uses
  System.SysUtils;

{ TCalculadora }

constructor TCalculadora.Create;
begin
end;

destructor TCalculadora.Destroy;
begin
  inherited;
end;

function TCalculadora.Dividir: iOperacoes;
begin
  Result := TDividir.New;
end;

function TCalculadora.Multiplicar: iOperacoes;
begin
  Result := TMultiplicar.New;
end;

class function TCalculadora.New: iCalculadora;
begin
  Result := Self.Create;
end;

function TCalculadora.Soma: iOperacoes;
begin
  Result := TSoma.Create;
end;

function TCalculadora.Subtrair: iOperacoes;
begin
  Result := TSubtrair.Create;
end;



end.
