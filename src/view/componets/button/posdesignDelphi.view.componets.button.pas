unit posdesignDelphi.view.componets.button;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Layouts,
  posdesignDelphi.view.source.utils;

type
  TComponetButton = class(TForm)
    LayoutContainer: TLayout;
    Image1: TImage;
    btnCmpButton: TSpeedButton;
    procedure btnCmpButtonClick(Sender: TObject);
  private
    { Private declarations }
    FClick: TProc<TObject>;
  public
    { Public declarations }
    function build: TFMXObject;
    function Image(Value: string): TComponetButton;
    function Click(Value: TProc<TObject>): TComponetButton;
    function Align(Value : TAlignLayout) : TComponetButton;
  end;

var
  ComponetButton: TComponetButton;

implementation

{$R *.fmx}
{ TComponetButton }

function TComponetButton.Align(Value: TAlignLayout): TComponetButton;
begin
  Result := Self;
  LayoutContainer.Align := TAlignLayout.None;
  LayoutContainer.Align := Value;
end;

procedure TComponetButton.btnCmpButtonClick(Sender: TObject);
begin
  if Assigned(FClick) then
    FClick(Sender);
end;

function TComponetButton.build: TFMXObject;
begin
  Result := LayoutContainer;
end;

function TComponetButton.Click(Value: TProc<TObject>): TComponetButton;
begin
  Result := Self;
  FClick := Value;
end;

function TComponetButton.Image(Value: string): TComponetButton;
begin
  Result := Self;
  TUtils.ResourceImage(Value, Image1);
end;

end.
