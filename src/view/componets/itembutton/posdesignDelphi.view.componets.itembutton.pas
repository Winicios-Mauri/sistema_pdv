unit posdesignDelphi.view.componets.itembutton;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts,
  posdesignDelphi.view.source.utils, posdesignDelphi.view.componets.itemlista;

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
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    FItem: Integer;
    FFramed: TFramedVertScrollBox;
    FIndex: TComponentItemLista;
    procedure RemoveFrame(Sender: TObject);
  public
    { Public declarations }
    function Recursos(Item: Integer; Frame: TFramedVertScrollBox; Image, Descricao, Valor: string): TComponetItemButton;
  end;

var
  ComponetItemButton: TComponetItemButton;

implementation

{$R *.fmx}

{ TComponetButton1 }

function TComponetItemButton.Recursos(Item: Integer; Frame: TFramedVertScrollBox; Image, Descricao, Valor: string): TComponetItemButton;
begin
  Result := Self;

  FItem := Item;
  FFramed := Frame;
  lbldescricao.Text := Descricao;
  lblpreco.Text := Valor;
  TUtils.ResourceImage(Image, Image1);
end;

procedure TComponetItemButton.RemoveFrame(Sender: TObject);
begin
  FFramed.RemoveObject(FIndex);
  FIndex.DisposeOf;
  Dec(FItem);
end;

procedure TComponetItemButton.SpeedButton1Click(Sender: TObject);
var
  LFrameItem: TComponentItemLista;
begin
  Inc(FItem);
  LFrameItem := TComponentItemLista.Create(Self);
  LFrameItem.Name := 'FramItem' + FItem.ToString;
  LFrameItem.lbldescricao.Text := Self.lbldescricao.Text;
  LFrameItem.lblvalor.text := FormatCurr('R$ #,##0.00', StrToCurr(Self.lblpreco.Text));
  LFrameItem.lblquantidade.Text := '1';
  LFrameItem.ValorUnitario := StrToCurr(Self.lblpreco.Text);
  LFrameItem.Align := TAlignLayout.Top;
  FIndex := LFrameItem;
  LFrameItem.Click(RemoveFrame);
  FFramed.AddObject(LFrameItem);

end;

end.
