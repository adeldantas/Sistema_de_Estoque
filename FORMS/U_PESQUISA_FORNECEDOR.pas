unit U_PESQUISA_FORNECEDOR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_PESQUISA_PADRAO, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls;

type
  TFrm_Pesquisa_Fornecedor = class(TFrm_Pesquisa_Padrao)
    query_pesquisa_padraoID_FORNECEDOR: TIntegerField;
    query_pesquisa_padraoNOME: TStringField;
    query_pesquisa_padraoENDERECO: TStringField;
    query_pesquisa_padraoNUMERO: TIntegerField;
    query_pesquisa_padraoBAIRRO: TStringField;
    query_pesquisa_padraoCIDADE: TStringField;
    query_pesquisa_padraoUF: TStringField;
    query_pesquisa_padraoCEP: TStringField;
    query_pesquisa_padraoTELEFONE: TStringField;
    query_pesquisa_padraoCNPJ: TStringField;
    query_pesquisa_padraoCADASTRO: TDateField;
    query_pesquisa_padraoEMAIL: TStringField;
    procedure Bt_pesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Pesquisa_Fornecedor: TFrm_Pesquisa_Fornecedor;

implementation

{$R *.dfm}

procedure TFrm_Pesquisa_Fornecedor.Bt_pesquisaClick(Sender: TObject);
  begin
  QUERY_pesquisa_padrao.close;
  QUERY_pesquisa_padrao.sql.add('');
  QUERY_pesquisa_padrao.Params.Clear;
  QUERY_pesquisa_padrao.sql.clear;
  QUERY_pesquisa_padrao.sql.add('SELECT ID_FORNECEDOR,NOME,ENDERECO,NUMERO,BAIRRO,CIDADE,UF,CEP,TELEFONE,CNPJ,EMAIL,CADASTRO FROM FORNECEDOR');

  case cb_chave_pesquisa.ItemIndex of
    0:begin
        QUERY_PESQUISA_PADRAO.SQL.ADD('WHERE ID_FORNECEDOR =:PID_FORNECEDOR');
        QUERY_PESQUISA_PADRAO.PARAMBYNAME('PID_FORNECEDOR').ASSTRING:=ed_nome.Text;
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
end.