unit posdesignDelphi.view.componets.navbar;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts, FMX.Controls.Presentation, FMX.StdCtrls,
  posdesignDelphi.view.source.utils, FMX.Effects,
  posdesignDelphi.view.componets.button;

type
  TComponetsNavBar = class(TForm)
    LayoutContainer: TLayout;
    Rectangle1: TRectangle;
    ShadowEffect1: TShadowEffect;
    Layout2: TLayout;
    Layout3: TLayout;
    Layout1: TLayout;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure ClicarMenu(Sender: TObject);
    procedure ClicarPapel(Sender: TObject);
    procedure ClicarLoja(Sender: TObject);
    procedure ClicarIluminacao(Sender: TObject);
  public
    { Public declarations }
    function build: TFMXObject;
  end;

var
  ComponetsNavBar: TComponetsNavBar;

implementation

{$R *.fmx}
{ TComponetsNavBar }

{ TComponetsNavBar }

function TComponetsNavBar.build: TFMXObject;
begin
  Result := LayoutContainer;
end;

procedure TComponetsNavBar.ClicarIluminacao(Sender: TObject);
begin
  ShowMessage('Estou Clicando no botão de Iluminação');
end;

procedure TComponetsNavBar.ClicarLoja(Sender: TObject);
begin
  ShowMessage('Estou Clicando no botão de Loja');
end;

procedure TComponetsNavBar.ClicarMenu(Sender: TObject);
begin
  ShowMessage('Estou Clicando no Menu');
end;

procedure TComponetsNavBar.ClicarPapel(Sender: TObject);
begin
  ShowMessage('Estou Clicando no botão Papel');
end;

procedure TComponetsNavBar.FormCreate(Sender: TObject);
begin
  Layout2.AddObject(TComponetButton.Create(Self).Image('img_menu')
    .Click(ClicarMenu).build);

  Layout2.AddObject(TComponetButton.Create(Self).Image('img_papel')
    .Align(TAlignLayout.Right).Click(ClicarPapel).build);

  Layout2.AddObject(TComponetButton.Create(Self).Image('img_loja')
    .Align(TAlignLayout.Right).Click(ClicarLoja).build);

  Layout2.AddObject(TComponetButton.Create(Self).Image('img_iluminacao')
    .Align(TAlignLayout.Right).Click(ClicarIluminacao).build);
end;

end.
