unit posdesignDelphi.view.pages.app;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  posdesignDelphi.view.componets.navbar,Router4D, Router4D.Interfaces, FMX.Objects,
  posdesignDelphi.view.pages.main;

type
  TPageApp = class(TForm, iRouter4DComponent)
    LayoutContainer: TLayout;
    LayoutNavBar: TLayout;
    LayoutBody: TLayout;
    Rectangle1: TRectangle;
  private
    { Private declarations }
  public
    { Public declarations }
    function Render: TFMXObject;
    procedure UnRender;
  end;

var
  PageApp: TPageApp;

implementation

{$R *.fmx}

function TPageApp.Render: TFMXObject;
begin
  Result := LayoutContainer;

  LayoutNavBar.AddObject(TComponetsNavBar.Create(Self).build);

  TRouter4D.Render<TPageMain>.SetElement(LayoutBody, LayoutBody);
end;

procedure TPageApp.UnRender;
begin

end;

end.
