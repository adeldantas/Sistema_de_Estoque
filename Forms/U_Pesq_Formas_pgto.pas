unit U_Pesq_Formas_pgto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Form_pesquisa_padrao, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, frxClass, frxExportPDF,
  frxDBSet, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TFrm_pesq_forma_pgto = class(TFrm_pesquisa_padrao)
    Q_pesq_padraoID_FORMA_PGTO: TFDAutoIncField;
    Q_pesq_padraoDESCRICAO: TStringField;
    Q_pesq_padraoCADASTRO: TDateField;
    procedure bt_PesquisaClick(Sender: TObject);
    procedure bt_TransferirClick(Sender: TObject);
    procedure cb_chave_pesquisaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_pesq_forma_pgto: TFrm_pesq_forma_pgto;

implementation

{$R *.dfm}

procedure TFrm_pesq_forma_pgto.bt_PesquisaClick(Sender: TObject);
begin
  inherited;

 Q_pesq_padrao.Close; // fecha
 Q_pesq_padrao.SQL.Add(''); // limpa
 Q_pesq_padrao.Params.Clear;  //limpamos os parametros
 Q_pesq_padrao.SQL.Clear;  // limPa o sql
 Q_pesq_padrao.SQL.Add('SELECT ID_FORMA_PGTO, '
                       + 'DESCRICAO, '
                       + 'CADASTRO '
                       + 'FROM FORMA_PGTO'); // add sql

 case cb_chave_pesquisa.ItemIndex of
   0:begin// pesquisa por codigo
      Q_pesq_padrao.SQL.Add('WHERE ID_FORMA_PGTO =:PID_FORMA_PGTO'); // criamos o parametro
      Q_pesq_padrao.ParamByName('PID_FORMA_PGTO').AsString:=ed_nome.Text; // aponta para o campo do parametro

   end;

    1:begin // pesquisa por nome
      Q_pesq_padrao.SQL.Add('WHERE DESCRICAO LIKE :PNOME'); // criamos o parametro
      Q_pesq_padrao.ParamByName('PNOME').AsString:= '%' +ed_nome.Text + '%'; // aponta para o campo do parametro

   end;

  2:begin
      Q_pesq_padrao.SQL.Add('ORDER BY ID_FORMA_PGTO');
     end;
 end;

// abre a query mostra o resultado
 Q_pesq_padrao.Open;

 // Mostra a quantidade de registros encontrados
    lb_Resultado.Caption:=' Total de Registros Localizados:   ' +
    IntTostr(Q_pesq_padrao.recordcount);

 // se nada for encontrado mostra a msg
 if Q_pesq_padrao.IsEmpty then
    begin
      Messagedlg('Registro n�o encontrado!',MtInformation,[mbOk],0);
    end
    else
    abort;
end;

procedure TFrm_pesq_forma_pgto.bt_TransferirClick(Sender: TObject);
begin
  inherited;
if Q_pesq_padrao.RecordCount > 0 then
     begin
       codigo:=Q_pesq_padraoID_forma_pgto.AsInteger;
     end
     else
     abort;

end;

procedure TFrm_pesq_forma_pgto.cb_chave_pesquisaChange(Sender: TObject);
begin
 // inherited;

end;

end.
