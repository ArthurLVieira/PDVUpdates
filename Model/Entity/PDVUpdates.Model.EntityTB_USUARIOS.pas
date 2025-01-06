unit PDVUpdates.Model.Entitytb_usuarios;

interface

uses
  DB, 
  Classes, 
  SysUtils, 
  Generics.Collections, 

  /// orm 
  ormbr.types.blob, 
  ormbr.types.lazy, 
  dbcbr.types.mapping, 
  ormbr.types.nullable, 
  dbcbr.mapping.classes, 
  dbcbr.mapping.register, 
  dbcbr.mapping.attributes; 

type
  [Entity]
  [Table('TB_USUARIOS', '')]
  [PrimaryKey('USU_CODIGO', NotInc, NoSort, False, 'Chave primária')]
  TTB_USUARIOS = class
  private
    { Private declarations } 
    FUSU_CODIGO: Integer;
    FUSU_UUID: Nullable<String>;
    FUSU_NOME_COMPLETO: Nullable<String>;
    FUSU_LOGIN: Nullable<String>;
    FUSU_SENHA: Nullable<String>;
    FUSU_NIVEL: Nullable<String>;
    FUSU_CODIGO_NIVEL: Nullable<Integer>;
    FUSU_BENEFICIARIO: Nullable<String>;
    FUSU_ULTIMO_ACESSO: Nullable<TDateTime>;
    FUSU_EMAIL: Nullable<String>;
    FUSU_NASCIMENTO: Nullable<TDateTime>;
    FUSU_CPF: Nullable<String>;
    FUSU_CADASTRO: Nullable<TDateTime>;
    FUSU_HORAULTIMOACESSO: Nullable<String>;
    FUSU_DESATIVO: Nullable<Boolean>;
    FUSU_COMISSAO_DINHEIRO: Nullable<Double>;
    FUSU_COMISSAO_CREDIARIO: Nullable<Double>;
    FUSU_COMISSAO_DEBITO: Nullable<Double>;
    FUSU_COMISSAO_CREDITO: Nullable<Double>;
    FUSU_COMISSAO_CHEQUE: Nullable<Double>;
    FUSU_COMISSAO_BOLETO: Nullable<Double>;
  public 
    { Public declarations } 
    [Restrictions([NotNull])]
    [Column('USU_CODIGO', ftInteger)]
    [Dictionary('USU_CODIGO', 'Mensagem de validação', '', '', '', taCenter)]
    property USU_CODIGO: Integer read FUSU_CODIGO write FUSU_CODIGO;

    [Column('USU_UUID', ftString, 36)]
    [Dictionary('USU_UUID', 'Mensagem de validação', '', '', '', taLeftJustify)]
    property USU_UUID: Nullable<String> read FUSU_UUID write FUSU_UUID;

    [Column('USU_NOME_COMPLETO', ftString, 250)]
    [Dictionary('USU_NOME_COMPLETO', 'Mensagem de validação', '', '', '', taLeftJustify)]
    property USU_NOME_COMPLETO: Nullable<String> read FUSU_NOME_COMPLETO write FUSU_NOME_COMPLETO;

    [Column('USU_LOGIN', ftString, 50)]
    [Dictionary('USU_LOGIN', 'Mensagem de validação', '', '', '', taLeftJustify)]
    property USU_LOGIN: Nullable<String> read FUSU_LOGIN write FUSU_LOGIN;

    [Column('USU_SENHA', ftString, 250)]
    [Dictionary('USU_SENHA', 'Mensagem de validação', '', '', '', taLeftJustify)]
    property USU_SENHA: Nullable<String> read FUSU_SENHA write FUSU_SENHA;

    [Column('USU_NIVEL', ftString, 50)]
    [Dictionary('USU_NIVEL', 'Mensagem de validação', '', '', '', taLeftJustify)]
    property USU_NIVEL: Nullable<String> read FUSU_NIVEL write FUSU_NIVEL;

    [Column('USU_CODIGO_NIVEL', ftInteger)]
    [Dictionary('USU_CODIGO_NIVEL', 'Mensagem de validação', '', '', '', taCenter)]
    property USU_CODIGO_NIVEL: Nullable<Integer> read FUSU_CODIGO_NIVEL write FUSU_CODIGO_NIVEL;

    [Column('USU_BENEFICIARIO', ftString, 50)]
    [Dictionary('USU_BENEFICIARIO', 'Mensagem de validação', '', '', '', taLeftJustify)]
    property USU_BENEFICIARIO: Nullable<String> read FUSU_BENEFICIARIO write FUSU_BENEFICIARIO;

    [Column('USU_ULTIMO_ACESSO', ftDateTime)]
    [Dictionary('USU_ULTIMO_ACESSO', 'Mensagem de validação', '', '', '', taCenter)]
    property USU_ULTIMO_ACESSO: Nullable<TDateTime> read FUSU_ULTIMO_ACESSO write FUSU_ULTIMO_ACESSO;

    [Column('USU_EMAIL', ftString, 250)]
    [Dictionary('USU_EMAIL', 'Mensagem de validação', '', '', '', taLeftJustify)]
    property USU_EMAIL: Nullable<String> read FUSU_EMAIL write FUSU_EMAIL;

    [Column('USU_NASCIMENTO', ftDateTime)]
    [Dictionary('USU_NASCIMENTO', 'Mensagem de validação', '', '', '', taCenter)]
    property USU_NASCIMENTO: Nullable<TDateTime> read FUSU_NASCIMENTO write FUSU_NASCIMENTO;

    [Column('USU_CPF', ftString, 20)]
    [Dictionary('USU_CPF', 'Mensagem de validação', '', '', '', taLeftJustify)]
    property USU_CPF: Nullable<String> read FUSU_CPF write FUSU_CPF;

    [Column('USU_CADASTRO', ftDateTime)]
    [Dictionary('USU_CADASTRO', 'Mensagem de validação', '', '', '', taCenter)]
    property USU_CADASTRO: Nullable<TDateTime> read FUSU_CADASTRO write FUSU_CADASTRO;

    [Column('USU_HORAULTIMOACESSO', ftString, 10)]
    [Dictionary('USU_HORAULTIMOACESSO', 'Mensagem de validação', '', '', '', taLeftJustify)]
    property USU_HORAULTIMOACESSO: Nullable<String> read FUSU_HORAULTIMOACESSO write FUSU_HORAULTIMOACESSO;


    [Column('USU_DESATIVO', ftBoolean)]
    [Dictionary('USU_DESATIVO', 'Mensagem de validação', '', '', '', taLeftJustify)]
    property USU_DESATIVO: Nullable<Boolean> read FUSU_DESATIVO write FUSU_DESATIVO;

    [Column('USU_COMISSAO_DINHEIRO', ftBCD)]
    [Dictionary('USU_COMISSAO_DINHEIRO', 'Mensagem de validação', '0', '', '', taRightJustify)]
    property USU_COMISSAO_DINHEIRO: Nullable<Double> read FUSU_COMISSAO_DINHEIRO write FUSU_COMISSAO_DINHEIRO;

    [Column('USU_COMISSAO_CREDIARIO', ftBCD)]
    [Dictionary('USU_COMISSAO_CREDIARIO', 'Mensagem de validação', '0', '', '', taRightJustify)]
    property USU_COMISSAO_CREDIARIO: Nullable<Double> read FUSU_COMISSAO_CREDIARIO write FUSU_COMISSAO_CREDIARIO;

    [Column('USU_COMISSAO_DEBITO', ftBCD)]
    [Dictionary('USU_COMISSAO_DEBITO', 'Mensagem de validação', '0', '', '', taRightJustify)]
    property USU_COMISSAO_DEBITO: Nullable<Double> read FUSU_COMISSAO_DEBITO write FUSU_COMISSAO_DEBITO;

    [Column('USU_COMISSAO_CREDITO', ftBCD)]
    [Dictionary('USU_COMISSAO_CREDITO', 'Mensagem de validação', '0', '', '', taRightJustify)]
    property USU_COMISSAO_CREDITO: Nullable<Double> read FUSU_COMISSAO_CREDITO write FUSU_COMISSAO_CREDITO;

    [Column('USU_COMISSAO_CHEQUE', ftBCD)]
    [Dictionary('USU_COMISSAO_CHEQUE', 'Mensagem de validação', '0', '', '', taRightJustify)]
    property USU_COMISSAO_CHEQUE: Nullable<Double> read FUSU_COMISSAO_CHEQUE write FUSU_COMISSAO_CHEQUE;

    [Column('USU_COMISSAO_BOLETO', ftBCD)]
    [Dictionary('USU_COMISSAO_BOLETO', 'Mensagem de validação', '0', '', '', taRightJustify)]
    property USU_COMISSAO_BOLETO: Nullable<Double> read FUSU_COMISSAO_BOLETO write FUSU_COMISSAO_BOLETO;
  end;

implementation

initialization
  TRegisterClass.RegisterEntity(TTB_USUARIOS)

end.
