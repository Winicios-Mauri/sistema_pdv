unit posdesignDelphi.view.source.routers;

interface

uses
  Router4D, posdesignDelphi.view.pages.app;

type
  TRouter = class
  private
  public
    constructor Create;
    destructor Destroy; override;
  end;

var
  routers: TRouter;

implementation

{ TRouter }

constructor TRouter.Create;
begin
  TRouter4D.Switch.router('App', TPageApp);
end;

destructor TRouter.Destroy;
begin

  inherited;
end;

initialization

routers := TRouter.Create;

finalization

routers.Free;

end.
