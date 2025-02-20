unit Login.View;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs, Vcl.StdCtrls, WEBLib.StdCtrls, Vcl.Controls,
  Buscar.View;

type
  TLoginView = class(TWebForm)
    WebButton1: TWebButton;
    WebEdit1: TWebEdit;
    WebEdit2: TWebEdit;
    WebLabel1: TWebLabel;
    WebLabel2: TWebLabel;
    WebLabel3: TWebLabel;
    procedure WebButton1Click(Sender: TObject);
    procedure WebFormShow(Sender: TObject);
  private
    procedure ShowFormViewModo01;
    [async]
    procedure ShowFormViewModo02;
    procedure ShowFormViewModo03;
  public
  end;

var
  LoginView: TLoginView;

implementation

{$R *.dfm}

procedure TLoginView.WebFormShow(Sender: TObject);
begin
  WebEdit1.SetFocus;
end;

procedure TLoginView.WebButton1Click(Sender: TObject);
begin
  if WebEdit1.Text <> 'admin' then
  begin
    ShowMessage('Login inválido');
    WebEdit1.SetFocus;
    Exit;
  end;

  if WebEdit2.Text <> 'admin' then
  begin
    ShowMessage('Senha inválida');
    WebEdit2.SetFocus;
    Exit;
  end;

  Self.ShowFormViewModo01;
end;

procedure TLoginView.ShowFormViewModo01;
var
  LView: TBuscarView;

  procedure AfterCreate(AForm: TObject);
  begin
    (AForm as TBuscarView).WebEdit1.Text := WebEdit1.Text;
  end;

  procedure AfterShowModal(AValue: TModalResult);
  begin
    ShowMessage('Depois do ShowModal. WebEdit1:'+ LView.WebEdit1.Text);
    WebEdit1.Text := LView.WebEdit1.Text;
  end;
begin
  LView := TBuscarView.CreateNew(@AfterCreate);
  LView.ShowModal(@AfterShowModal);
end;

procedure TLoginView.ShowFormViewModo02;
var
  LView: TBuscarView;
begin
  LView := TBuscarView.Create(Self);
  try
    LView.Popup := False;
    TAwait.ExecP<TBuscarView>(LView.Load());
    TAwait.ExecP<TModalResult>(LView.Execute);
  finally
    LView.Free;
  end;
end;

procedure TLoginView.ShowFormViewModo03;
var
  LView: TBuscarView;
begin
  LView := TBuscarView.CreateNew;
  LView.Popup := False;
  LView.ShowModal;
end;

end.