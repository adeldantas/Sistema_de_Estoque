unit U_PRINCIPAL;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Menus;

type
  TFrm_Principal = class(TForm)
    Panel1: TPanel;
    bt_Usuario: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    StatusBar1: TStatusBar;
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Usurio1: TMenuItem;
    Empresa1: TMenuItem;
    Cliente1: TMenuItem;
    Fornecedores1: TMenuItem;
    Produtos1: TMenuItem;
    FormasdePgto1: TMenuItem;
    Movimentos1: TMenuItem;
    Compras1: TMenuItem;
    Vendas1: TMenuItem;
    Relatrios1: TMenuItem;
    ListaUsurios1: TMenuItem;
    ListaFornecedores1: TMenuItem;
    ListaClientes1: TMenuItem;
    ListaProdutos1: TMenuItem;
    ListaCompras1: TMenuItem;
    ListaVendas1: TMenuItem;
    SobreoSistema1: TMenuItem;
    N1: TMenuItem;
    Timer2: TTimer;
    procedure SpeedButton10Click(Sender: TObject);
    procedure bt_UsuarioClick(Sender: TObject);
    procedure Abre_Tela_Usuario();
    procedure Timer2Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Principal: TFrm_Principal;

implementation

{$R *.dfm}

uses U_USUARIO;

procedure TFrm_Principal.Abre_Tela_Usuario;
begin
 frm_Usuario:=Tfrm_usuario.Create(self);
 frm_Usuario.ShowModal;
 try

 finally
  frm_usuario.Free;
  frm_usuario:=nil;
 end;
end;

procedure TFrm_Principal.bt_UsuarioClick(Sender: TObject);
begin
  Abre_Tela_Usuario;
end;

procedure TFrm_Principal.SpeedButton10Click(Sender: TObject);
begin
 if messagedlg('Deseja sair do sistema?', mtConfirmation, [mbOk, mbNo],0)=mrOk then
    begin
      Application.Terminate;
    end
    else
    abort;

 close;
end;


procedure TFrm_Principal.Timer2Timer(Sender: TObject);
begin
  Statusbar1.Panels[0].Text:=DateTostr(now);
 Statusbar1.Panels[1].Text:=TimeTostr(now);
 Statusbar1.Panels[2].Text:='SEJA BEM-VINDO AO SISTEMA';
end;


end.
