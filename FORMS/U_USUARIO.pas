unit U_USUARIO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_PADRAO, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask;

type
  TFrm_usuario = class(TFrm_padrao)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DB_NOME: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Label6: TLabel;
    DB_CADASTRO: TDBEdit;
    DBComboBox1: TDBComboBox;
    procedure bt_NovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_usuario: TFrm_usuario;

implementation

{$R *.dfm}

procedure TFrm_usuario.bt_NovoClick(Sender: TObject);
begin
  inherited;
  //db_id_usuario.Text := '';
 // db_id_usuario.Enabled := false;
  db_cadastro.Text:=dateTostr(now);
  db_nome.SetFocus;
end;

end.
