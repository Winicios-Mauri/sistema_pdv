unit posdesignDelphi.view.componets.categorybutton;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts,
  posdesignDelphi.view.source.utils, FMX.Effects;

type
  TComponetCategoryButton = class(TForm)
    Layout1: TLayout;
    Rectangle1: TRectangle;
    Layout2: TLayout;
    Layout3: TLayout;
    lbldescricao: TLabel;
    Image1: TImage;
    ShadowEffect1: TShadowEffect;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    FClick: TProc<TObject>;
    procedure Selecionar;
  public
    { Public declarations }
    function Recursos(Imagem, Descricao: string): TComponetCategoryButton;
    function Click(Value: TProc<TObject>): TComponetCategoryButton;
  end;

var
  ComponetCategoryButton: TComponetCategoryButton;

implementation

{$R *.fmx}
{ TComponetCategoryButton }

function TComponetCategoryButton.Click(Value: TProc<TObject>)
  : TComponetCategoryButton;
begin
  Result := Self;
  FClick := Value;
end;

procedure TComponetCategoryButton.Selecionar;
begin
  Rectangle1.Stroke.Kind := TBrushKind.Solid;
  Rectangle1.Stroke.Color := TAlphaColor(4279148392);
  Image1.Bitmap.ReplaceOpaqueColor(TAlphaColor(4279148392));
  lbldescricao.TextSettings.FontColor := TAlphaColor(4279148392);
end;

procedure TComponetCategoryButton.SpeedButton1Click(Sender: TObject);
begin
  if Assigned(FClick) then
    FClick(Sender);
  Selecionar
end;

function TComponetCategoryButton.Recursos(Imagem, Descricao: string)
  : TComponetCategoryButton;
begin
  Result := Self;
  lbldescricao.Text := Descricao;
  TUtils.ResourceImage(Imagem, Image1);
  Image1.Bitmap.ReplaceOpaqueColor(TAlphaColor($FFB5B5B5));
end;

end.
