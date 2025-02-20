unit Buscar.View;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs, Vcl.Controls, Vcl.StdCtrls, WEBLib.StdCtrls;

type
  TBuscarView = class(TWebForm)
    WebEdit1: TWebEdit;
    WebButton1: TWebButton;
    procedure WebButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BuscarView: TBuscarView;

implementation

{$R *.dfm}

procedure TBuscarView.WebButton1Click(Sender: TObject);
begin
  Self.Close;
end;

end.
