unit PDVUpdates.Model.Entity.usuario;

interface

uses
  DB,
  Classes,
  SysUtils,
  Generics.Collections,

  /// orm
  ormbr.types.blob,
  ormbr.types.lazy,
  ormbr.types.nullable,
  dbcbr.types.mapping, dbcbr.mapping.attributes;

type

  [Entity]
  [Table('USUARIO', '')]
  [PrimaryKey('GUUID', NotInc, NoSort, False, 'Chave prim�ria')]
  TUSUARIO = class
  private
    { Private declarations }
    FGUUID: String;
    FNOME: nullable<String>;
    FSENHA: nullable<String>;
    FTIPO: nullable<Integer>;
    FSTATUS: nullable<Integer>;
    FDATACADASTRO: nullable<TDateTime>;
    FDATAALTERACAO: nullable<TDateTime>;
  public
    { Public declarations }
    [Restrictions([NotNull])]
    [Column('GUUID', ftString, 64)]
    [Dictionary('GUUID', 'Mensagem de valida��o', '', '', '', taLeftJustify)]
    property GUUID: String read FGUUID write FGUUID;

    [Column('NOME', ftString, 60)]
    [Dictionary('NOME', 'Mensagem de valida��o', '', '', '', taLeftJustify)]
    property NOME: nullable<String> read FNOME write FNOME;

    [Column('SENHA', ftString, 20)]
    [Dictionary('SENHA', 'Mensagem de valida��o', '', '', '', taLeftJustify)]
    property SENHA: nullable<String> read FSENHA write FSENHA;

    [Column('TIPO', ftInteger)]
    [Dictionary('TIPO', 'Mensagem de valida��o', '', '', '', taCenter)]
    property TIPO: nullable<Integer> read FTIPO write FTIPO;

    [Column('STATUS', ftInteger)]
    [Dictionary('STATUS', 'Mensagem de valida��o', '', '', '', taCenter)]
    property STATUS: nullable<Integer> read FSTATUS write FSTATUS;

    [Column('DATACADASTRO', ftDateTime)]
    [Dictionary('DATACADASTRO', 'Mensagem de valida��o', '', '', '', taCenter)]
    property DATACADASTRO: nullable<TDateTime> read FDATACADASTRO
      write FDATACADASTRO;

    [Column('DATAALTERACAO', ftDateTime)]
    [Dictionary('DATAALTERACAO', 'Mensagem de valida��o', '', '', '', taCenter)]
    property DATAALTERACAO: nullable<TDateTime> read FDATAALTERACAO
      write FDATAALTERACAO;
  end;

implementation

uses
  dbcbr.mapping.register;

initialization

TRegisterClass.RegisterEntity(TUSUARIO)

end.
