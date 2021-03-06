unit posdesignDelphi.view.source.utils;

interface

uses
  FMX.Objects, System.Classes, System.Types;

type

  TUtils = class
  private
  public
    class procedure ResourceImage(Resource: string; Image: TImage);
  end;

implementation

{ TUtils }

class procedure TUtils.ResourceImage(Resource: string; Image: TImage);
var
  lResource: TResourceStream;
begin
  lResource := TResourceStream.Create(HInstance, Resource, RT_RCDATA);
  try
    Image.Bitmap.LoadFromStream(lResource);
  finally
    lResource.Free;
  end;
end;

end.
