unit posdesignDelphi.view.pages.app;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts;

type
  TPageApp = class(TForm)
    LayoutContainer: TLayout;
    LayoutNavBar: TLayout;
    LayoutBody: TLayout;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PageApp: TPageApp;

implementation

{$R *.fmx}

end.
