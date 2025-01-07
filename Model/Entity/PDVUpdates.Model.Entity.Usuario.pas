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
  dbcbr.types.mapping, 
  ormbr.types.nullable, 
  dbcbr.mapping.classes, 
  dbcbr.mapping.register, 
  dbcbr.mapping.attributes; 

type
  [Entity]
  [Table('USUARIO', '')]
  [PrimaryKey('GUUID', NotInc, NoSort, False, 'Chave prim�ria')]
  TUSUARIO = class
  private
    { Private declarations } 
    FGUUID: String;
    FNOME: Nullable<String>;
    FSENHA: Nullable<String>;
    FTIPO: Nullable<Integer>;
    FSTATUS: Nullable<Integer>;
    FDATACADASTRO: Nullable<TDateTime>;
    FDATAALTERACAO: Nullable<TDateTime>;
  public 
    { Public declarations } 
    [Restrictions([NotNull])]
    [Column('GUUID', ftString, 64)]
    [Dictionary('GUUID', 'Mensagem de valida��o', '', '', '', taLeftJustify)]
    property GUUID: String read FGUUID write FGUUID;

    [Column('NOME', ftString, 60)]
    [Dictionary('NOME', 'Mensagem de valida��o', '', '', '', taLeftJustify)]
    property NOME: Nullable<String> read FNOME write FNOME;

    [Column('SENHA', ftString, 20)]
    [Dictionary('SENHA', 'Mensagem de valida��o', '', '', '', taLeftJustify)]
    property SENHA: Nullable<String> read FSENHA write FSENHA;

    [Column('TIPO', ftInteger)]
    [Dictionary('TIPO', 'Mensagem de valida��o', '', '', '', taCenter)]
    property TIPO: Nullable<Integer> read FTIPO write FTIPO;

    [Column('STATUS', ftInteger)]
    [Dictionary('STATUS', 'Mensagem de valida��o', '', '', '', taCenter)]
    property STATUS: Nullable<Integer> read FSTATUS write FSTATUS;

    [Column('DATACADASTRO', ftDateTime)]
    [Dictionary('DATACADASTRO', 'Mensagem de valida��o', '', '', '', taCenter)]
    property DATACADASTRO: Nullable<TDateTime> read FDATACADASTRO write FDATACADASTRO;

    [Column('DATAALTERACAO', ftDateTime)]
    [Dictionary('DATAALTERACAO', 'Mensagem de valida��o', '', '', '', taCenter)]
    property DATAALTERACAO: Nullable<TDateTime> read FDATAALTERACAO write FDATAALTERACAO;
  end;

implementation

initialization
  TRegisterClass.RegisterEntity(TUSUARIO)

end.
