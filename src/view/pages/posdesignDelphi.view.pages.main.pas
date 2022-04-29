unit posdesignDelphi.view.pages.main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.Objects, Router4D.Interfaces, FMX.Controls.Presentation, FMX.StdCtrls,
  FMX.Effects, posdesignDelphi.view.source.utils, FMX.Edit;

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
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
  private
    { Private declarations }
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

procedure TPageMain.Edit1Click(Sender: TObject);
begin
  Edit1.Text := '';
  Edit1.TextSettings.FontColor := $FFACB0AF;
end;

function TPageMain.Render: TFMXObject;
begin
  Result := LayoutContainer;

  TUtils.ResourceImage('img_source', Image1);
end;

procedure TPageMain.SpeedButton1Click(Sender: TObject);
begin
  ShowMessage(Label7.Text + Label8.Text);

end;

procedure TPageMain.UnRender;
begin

end;

end.