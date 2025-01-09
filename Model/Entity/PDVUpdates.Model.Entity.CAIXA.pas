unit PDVUpdates.Model.Entity.caixa;

interface

uses
  DB,
  Classes,
  SysUtils,
  Generics.Collections,

  /// orm
  ormbr.types.blob,
  ormbr.types.lazy,
  dbcbr.types.mapping, dbcbr.mapping.attributes, ormbr.types.nullable;

type

  [Entity]
  [Table('CAIXA', '')]
  [PrimaryKey('GUUID', NotInc, NoSort, False, 'Chave primária')]
  TCAIXA = class
  private
    { Private declarations }
    FGUUID: String;
    FDATAABERTURA: nullable<TDateTime>;
    FDATAFECHAMENTO: nullable<TDateTime>;
    FSTATUS: nullable<Integer>;
    FVALORABERTUA: nullable<Double>;
    FVALORFECHAMENTO: nullable<Double>;
    FUSUARIO: nullable<Integer>;
    FOPERADOR: nullable<Integer>;
    FDATAALTERACAO: nullable<TDateTime>;
  public
    { Public declarations }
    [Restrictions([NotNull])]
    [Column('GUUID', ftString, 64)]
    [Dictionary('GUUID', 'Mensagem de validação', '', '', '', taLeftJustify)]
    property GUUID: String read FGUUID write FGUUID;

    [Column('DATAABERTURA', ftDateTime)]
    [Dictionary('DATAABERTURA', 'Mensagem de validação', '', '', '', taCenter)]
    property DATAABERTURA: nullable<TDateTime> read FDATAABERTURA
      write FDATAABERTURA;

    [Column('DATAFECHAMENTO', ftDateTime)]
    [Dictionary('DATAFECHAMENTO', 'Mensagem de validação', '', '', '',
      taCenter)]
    property DATAFECHAMENTO: nullable<TDateTime> read FDATAFECHAMENTO
      write FDATAFECHAMENTO;

    [Column('STATUS', ftInteger)]
    [Dictionary('STATUS', 'Mensagem de validação', '', '', '', taCenter)]
    property STATUS: nullable<Integer> read FSTATUS write FSTATUS;

    [Column('VALORABERTUA', ftBCD, 18, 4)]
    [Dictionary('VALORABERTUA', 'Mensagem de validação', '0', '', '',
      taRightJustify)]
    property VALORABERTUA: nullable<Double> read FVALORABERTUA
      write FVALORABERTUA;

    [Column('VALORFECHAMENTO', ftBCD, 18, 4)]
    [Dictionary('VALORFECHAMENTO', 'Mensagem de validação', '0', '', '',
      taRightJustify)]
    property VALORFECHAMENTO: nullable<Double> read FVALORFECHAMENTO
      write FVALORFECHAMENTO;

    [Column('USUARIO', ftInteger)]
    [Dictionary('USUARIO', 'Mensagem de validação', '', '', '', taCenter)]
    property USUARIO: nullable<Integer> read FUSUARIO write FUSUARIO;

    [Column('OPERADOR', ftInteger)]
    [Dictionary('OPERADOR', 'Mensagem de validação', '', '', '', taCenter)]
    property OPERADOR: nullable<Integer> read FOPERADOR write FOPERADOR;

    [Column('DATAALTERACAO', ftDateTime)]
    [Dictionary('DATAALTERACAO', 'Mensagem de validação', '', '', '', taCenter)]
    property DATAALTERACAO: nullable<TDateTime> read FDATAALTERACAO
      write FDATAALTERACAO;
  end;

implementation

uses
  dbcbr.mapping.register;

initialization

TRegisterClass.RegisterEntity(TCAIXA)

end.
