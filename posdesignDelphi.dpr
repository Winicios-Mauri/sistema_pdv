program posdesignDelphi;

{$R *.dres}

uses
  System.StartUpCopy,
  FMX.Forms,
  posdesignDelphi.view.index in 'src\view\posdesignDelphi.view.index.pas' {PageIndex},
  posdesignDelphi.view.source.routers in 'src\view\source\posdesignDelphi.view.source.routers.pas',
  posdesignDelphi.view.pages.app in 'src\view\pages\posdesignDelphi.view.pages.app.pas' {PageApp},
  posdesignDelphi.view.componets.navbar in 'src\view\componets\navbar\posdesignDelphi.view.componets.navbar.pas' {ComponetsNavBar},
  posdesignDelphi.view.source.utils in 'src\view\source\posdesignDelphi.view.source.utils.pas',
  posdesignDelphi.view.componets.button in 'src\view\componets\button\posdesignDelphi.view.componets.button.pas' {ComponetButton},
  posdesignDelphi.view.pages.main in 'src\view\pages\posdesignDelphi.view.pages.main.pas' {PageMain};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TPageIndex, PageIndex);
  Application.CreateForm(TPageApp, PageApp);
  Application.CreateForm(TComponetsNavBar, ComponetsNavBar);
  Application.CreateForm(TComponetButton, ComponetButton);
  Application.CreateForm(TPageMain, PageMain);
  Application.Run;
end.
