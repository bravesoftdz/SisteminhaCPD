unit Login.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  Tfrm_logar = class(TForm)
    edt_user: TEdit;
    edt_pass: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    usuario : string;
  end;

var
  frm_logar: Tfrm_logar;

implementation

{$R *.dfm}

uses Logout.View;

procedure Tfrm_logar.Button1Click(Sender: TObject);
var
login : string;
senha : string;

begin
login:=edt_user.Text;
senha:= edt_pass.Text;
WinExec(PAnsiChar('cmd.exe /k net use s: "\\uniuv-impressao\new folder" ' + senha + ' /user:UNIUV\' + usuario), sw_shownormal);
WinExec(PAnsiChar('cmd.exe /k net use s: /del /y '), sw_shownormal);

usuario:=edt_user.Text;

frm_deslogar.showmodal;

end;

end.
