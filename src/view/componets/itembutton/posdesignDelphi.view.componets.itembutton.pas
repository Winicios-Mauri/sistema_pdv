unit posdesignDelphi.view.componets.itembutton;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts,
  posdesignDelphi.view.source.utils;

type
  TComponetItemButton = class(TForm)
    Layout1: TLayout;
    Layout2: TLayout;
    Layout3: TLayout;
    lblpreco: TLabel;
    lbldescricao: TLabel;
    Layout4: TLayout;
    Image1: TImage;
    Rectangle1: TRectangle;
    SpeedButton1: TSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
    function Recursos(Image, Descricao, Valor: string): TComponetItemButton;
  end;

var
  ComponetItemButton: TComponetItemButton;

implementation

{$R *.fmx}

{ TComponetButton1 }

function TComponetItemButton.Recursos(Image, Descricao,
  Valor: string): TComponetItemButton;
begin
  Result := Self;

  lbldescricao.Text := Descricao;
  lblpreco.Text := Valor;
  TUtils.ResourceImage(Image, Image1);
end;

end.
