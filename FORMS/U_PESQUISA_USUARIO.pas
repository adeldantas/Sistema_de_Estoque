unit U_PESQUISA_USUARIO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_PESQUISA_PADRAO, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls;

type
  TFrm_Pesquisa_Usuario = class(TFrm_Pesquisa_Padrao)
    query_pesquisa_padraoID_USUARIO: TIntegerField;
    query_pesquisa_padraoNOME: TStringField;
    query_pesquisa_padraoTIPO: TStringField;
    query_pesquisa_padraoCADASTRO: TDateField;
    procedure Bt_pesquisaClick(Sender: TObject);
    procedure CB_chave_pesquisaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Pesquisa_Usuario: TFrm_Pesquisa_Usuario;

implementation

{$R *.dfm}

procedure TFrm_Pesquisa_Usuario.Bt_pesquisaClick(Sender: TObject);
begin
  QUERY_pesquisa_padrao.close;
  QUERY_pesquisa_padrao.sql.add('');
  QUERY_pesquisa_padrao.Params.Clear;
  QUERY_pesquisa_padrao.sql.clear;
  QUERY_pesquisa_padrao.sql.add('SELECT ID_USUARIO,NOME,TIPO,CADASTRO FROM USUARIO');

  case cb_chave_pesquisa.ItemIndex of
    0:begin
      QUERY_PESQUISA_PADRAO.SQL.ADD('WHERE ID_USUARIO =:PID_USUARIO');
      QUERY_PESQUISA_PADRAO.PARAMBYNAME('PID_USUARIO').ASSTRING:=ed_nome.Text;
      end;

    1:begin
      QUERY_PESQUISA_PADRAO.SQL.ADD('WHERE NOME LIKE :PNOME');
      QUERY_PESQUISA_PADRAO.PARAMBYNAME('PNOME').ASSTRING:= '%' + ed_nome.Text + '%';
      end;

    2:begin
      QUERY_PESQUISA_PADRAO.SQL.ADD('WHERE CADASTRO =:PCADASTRO');
      QUERY_PESQUISA_PADRAO.PARAMBYNAME('PCADASTRO').ASDATE:= strTodate (mk_inicio.Text);
      end;

    3:begin
      QUERY_PESQUISA_PADRAO.SQL.ADD('WHERE CADASTRO BETWEEN :PINICIO AND :PFIM');
      QUERY_PESQUISA_PADRAO.PARAMBYNAME('PINICIO').ASDATE:= strTodate (mk_inicio.Text);
      QUERY_PESQUISA_PADRAO.PARAMBYNAME('PFIM').ASDATE:= strTodate (mk_FIM.Text);
      end;

  end;

  QUERY_pesquisa_padrao.Open;

  if query_pesquisa_padrao.IsEmpty then
    begin
      messagedlg('Registro n�o encontrado!', mtinformation,[mbok],0);
    end
    else
    abort;
end;

procedure TFrm_Pesquisa_Usuario.CB_chave_pesquisaChange(Sender: TObject);
begin
  inherited;
  case cb_chave_pesquisa.ItemIndex of
    0:begin
      ed_nome.Visible:=true;
      ed_nome.SetFocus;
      mk_inicio.Visible:=false;
      mk_fim.Visible:=false;
      lb_nome.visible:=true;
      lb_inicio.Visible:=false;
      lb_fim.Visible:=false;
      lb_nome.Caption:='DIGITE O C�DIGO';
    end;

    1:begin
      ed_nome.Visible:=true;
      ed_nome.SetFocus;
      mk_inicio.Visible:=false;
      mk_fim.Visible:=false;
      lb_nome.visible:=true;
      lb_inicio.Visible:=false;
      lb_fim.Visible:=false;
      lb_nome.Caption:='DIGITE O NOME';
    end;

    2:begin
      ed_nome.Visible:=false;
      mk_inicio.Visible:=true;
      mk_inicio.SetFocus;
      mk_fim.Visible:=false;
      lb_nome.visible:=false;
      lb_inicio.Visible:=true;
      lb_inicio.Caption:='DIGITE A DATA ';
    end;

    3:begin
      ed_nome.Visible:=false;
      mk_inicio.Visible:=true;
      mk_fim.Visible:=true;
      mk_inicio.SetFocus;
      lb_nome.visible:=false;
      lb_inicio.Visible:=true;
      lb_fim.Visible:=false;
      lb_inicio.Caption:='DIGITE O PERIODO';
    end;

  end;
end;

end.
