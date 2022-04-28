unit posdesignDelphi.view.source.utils;

interface

uses
  FMX.Objects, System.Classes, System.Types;

type
  TUtils = class
  private
  public
    class procedure ResourceImage(Resourse: String; Image: TImage);
  end;

implementation

{ TUtils }

class procedure TUtils.ResourceImage(Resourse: String; Image: TImage);
var
  lResource: TResourceStream;
begin
  lResource := TResourceStream.Create(HInstance, Resourse, RT_RCDATA);
  try
    Image.Bitmap.LoadFromStream(lResource);
  finally
    lResource.Free;
  end;
end;

end.
