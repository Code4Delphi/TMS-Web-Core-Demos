program TMSWebCoreBootstrapDemosLogin;

uses
  Vcl.Forms,
  WEBLib.Forms,
  Login.View in 'Src\Login\Login.View.pas' {LoginView: TWebForm} {*.html},
  Buscar.View in 'Src\Buscar\Buscar.View.pas' {BuscarView: TWebForm} {*.html};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TLoginView, LoginView);
  Application.CreateForm(TBuscarView, BuscarView);
  Application.Run;
end.
