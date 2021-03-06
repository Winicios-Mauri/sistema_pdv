unit posdesignDelphi.view.pages.main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Objects, Router4D.Interfaces, FMX.Controls.Presentation, FMX.StdCtrls,
  FMX.Effects, posdesignDelphi.view.source.utils, FMX.Edit,
  posdesignDelphi.view.componets.itembutton,
  posdesignDelphi.view.componets.categorybutton;

type
  TPageMain = class(TForm, iRouter4DComponent)
    LayoutContainer: TLayout;
    Layout1: TLayout;
    Layout2: TLayout;
    Layout3: TLayout;
    Layout4: TLayout;
    Rectangle1: TRectangle;
    Layout5: TLayout;
    Layout6: TLayout;
    Layout7: TLayout;
    Rectangle2: TRectangle;
    Layout8: TLayout;
    Label1: TLabel;
    Layout9: TLayout;
    Rectangle3: TRectangle;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Layout10: TLayout;
    Layout11: TLayout;
    Rectangle4: TRectangle;
    Label5: TLabel;
    Label6: TLabel;
    Rectangle5: TRectangle;
    ShadowEffect1: TShadowEffect;
    ShadowEffect2: TShadowEffect;
    ShadowEffect3: TShadowEffect;
    Label7: TLabel;
    Label8: TLabel;
    SpeedButton1: TSpeedButton;
    Rectangle6: TRectangle;
    SpeedButton2: TSpeedButton;
    Rectangle7: TRectangle;
    SpeedButton3: TSpeedButton;
    Layout12: TLayout;
    Layout13: TLayout;
    Layout14: TLayout;
    Layout15: TLayout;
    Circle1: TCircle;
    Image1: TImage;
    SpeedButton5: TSpeedButton;
    RoundRect1: TRoundRect;
    Edit1: TEdit;
    SpeedButton4: TSpeedButton;
    Layout16: TLayout;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Layout17: TLayout;
    Label12: TLabel;
    Label13: TLabel;
    Layout18: TLayout;
    Label14: TLabel;
    Label15: TLabel;
    VertScrollBox1: TVertScrollBox;
    FlowLayout1: TFlowLayout;
    FlowLayout2: TFlowLayout;
    FramedVertScrollBox1: TFramedVertScrollBox;
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
  private
    { Private declarations }
    procedure CarregaItens;
    procedure CarregaCategory;
  public
    { Public declarations }
    function Render: TFMXObject;
    procedure UnRender;
  end;

var
  PageMain: TPageMain;

implementation

{$R *.fmx}
{ TPageMain }

procedure TPageMain.CarregaCategory;
begin
  FlowLayout2.AddObject(TComponetCategoryButton.Create(Self).Recursos('icon1',
    'Balan?a').Layout1);
  FlowLayout2.AddObject(TComponetCategoryButton.Create(Self).Recursos('icon2',
    'Drinks').Layout1);
  FlowLayout2.AddObject(TComponetCategoryButton.Create(Self).Recursos('icon3',
    'Caf?').Layout1);
  FlowLayout2.AddObject(TComponetCategoryButton.Create(Self).Recursos('icon4',
    'Churrasco').Layout1);
  FlowLayout2.AddObject(TComponetCategoryButton.Create(Self).Recursos('icon5',
    'Dinheiro').Layout1);
  FlowLayout2.AddObject(TComponetCategoryButton.Create(Self).Recursos('icon6',
    'Comida').Layout1);
end;

procedure TPageMain.CarregaItens;
var
  I: Integer;
begin
  for I := 1 to 8 do
  begin
    FlowLayout1.AddObject(TComponetItemButton.Create(Self)
      .Recursos(I, FramedVertScrollBox1, 'bebida' + I.ToString, 'Bebida', '3,35').Layout1);
  end;

end;

procedure TPageMain.Edit1Click(Sender: TObject);
begin
  Edit1.Text := '';
  Edit1.TextSettings.FontColor := $FFACB0AF;
end;

function TPageMain.Render: TFMXObject;
begin
  Result := LayoutContainer;

  TUtils.ResourceImage('img_source', Image1);

  CarregaItens;
  CarregaCategory;
end;

procedure TPageMain.SpeedButton1Click(Sender: TObject);
begin
  ShowMessage(Label7.Text + Label8.Text);

end;

procedure TPageMain.UnRender;
begin

end;

end.
