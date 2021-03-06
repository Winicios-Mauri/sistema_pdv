unit posdesignDelphi.view.componets.itemlista;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Controls.Presentation, FMX.Layouts;

type
  TComponentItemLista = class(TFrame)
    Layout1: TLayout;
    Layout2: TLayout;
    Layout3: TLayout;
    lbldescricao: TLabel;
    lblvalor: TLabel;
    Layout4: TLayout;
    Layout5: TLayout;
    Layout6: TLayout;
    lblquantidade: TLabel;
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    Image2: TImage;
    SpeedButton2: TSpeedButton;
    Image3: TImage;
    SpeedButton3: TSpeedButton;
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
    FClick: TProc<TObject>;
    FValorUnitario: Currency;

    procedure UpdateValor(Value:Currency);
  public
    { Public declarations }
    function Click(Value: TProc<TObject>): TComponentItemLista;
    property ValorUnitario: Currency read FValorUnitario write FValorUnitario;
  end;

implementation

{$R *.fmx}

{ TComponentItemLista }

function TComponentItemLista.Click(Value: TProc<TObject>): TComponentItemLista;
begin
  Result := Self;
  FClick := Value;
end;

procedure TComponentItemLista.SpeedButton1Click(Sender: TObject);
begin
  if (StrToInt(lblquantidade.Text) > 0) and (StrToInt(lblquantidade.Text) <> 1) then
  begin
    lblquantidade.Text := IntToStr(StrToInt(lblquantidade.Text) - 1);
    UpdateValor(StrToCurr(lblquantidade.Text));
  end;
end;

procedure TComponentItemLista.SpeedButton2Click(Sender: TObject);
begin
  lblquantidade.Text := IntToStr(StrToInt(lblquantidade.Text) + 1);
  UpdateValor(StrToCurr(lblquantidade.Text));
end;

procedure TComponentItemLista.SpeedButton3Click(Sender: TObject);
begin
  if Assigned(FClick) then
    FClick(Sender);
end;

procedure TComponentItemLista.UpdateValor(Value: Currency);
begin
  lblvalor.Text := FormatCurr('R$ #,##0.00', (ValorUnitario * Value));
end;

end.
