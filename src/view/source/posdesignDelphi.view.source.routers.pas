unit posdesignDelphi.view.source.routers;

interface

uses
  Router4D, posdesignDelphi.view.pages.app, posdesignDelphi.view.pages.main;

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
  TRouter4D.Switch.router('App', TPageApp).router('Main', TPageMain);
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
