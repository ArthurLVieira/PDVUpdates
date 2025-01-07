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
  dbcbr.types.mapping,
  ormbr.types.nullable, 
  dbcbr.mapping.classes, 
  dbcbr.mapping.register, 
  dbcbr.mapping.attributes; 

type
  [Entity]
  [Table('CAIXA', '')]
  [PrimaryKey('GUUID', NotInc, NoSort, False, 'Chave prim�ria')]
  TCAIXA = class
  private
    { Private declarations } 
    FGUUID: String;
    FDATAABERTURA: Nullable<TDateTime>;
    FDATAFECHAMENTO: Nullable<TDateTime>;
    FSTATUS: Nullable<Integer>;
    FVALORABERTUA: Nullable<Double>;
    FVALORFECHAMENTO: Nullable<Double>;
    FUSUARIO: Nullable<Integer>;
    FOPERADOR: Nullable<Integer>;
    FDATAALTERACAO: Nullable<TDateTime>;
  public 
    { Public declarations } 
    [Restrictions([NotNull])]
    [Column('GUUID', ftString, 64)]
    [Dictionary('GUUID', 'Mensagem de valida��o', '', '', '', taLeftJustify)]
    property GUUID: String read FGUUID write FGUUID;

    [Column('DATAABERTURA', ftDateTime)]
    [Dictionary('DATAABERTURA', 'Mensagem de valida��o', '', '', '', taCenter)]
    property DATAABERTURA: Nullable<TDateTime> read FDATAABERTURA write FDATAABERTURA;

    [Column('DATAFECHAMENTO', ftDateTime)]
    [Dictionary('DATAFECHAMENTO', 'Mensagem de valida��o', '', '', '', taCenter)]
    property DATAFECHAMENTO: Nullable<TDateTime> read FDATAFECHAMENTO write FDATAFECHAMENTO;

    [Column('STATUS', ftInteger)]
    [Dictionary('STATUS', 'Mensagem de valida��o', '', '', '', taCenter)]
    property STATUS: Nullable<Integer> read FSTATUS write FSTATUS;

    [Column('VALORABERTUA', ftBCD, 18, 4)]
    [Dictionary('VALORABERTUA', 'Mensagem de valida��o', '0', '', '', taRightJustify)]
    property VALORABERTUA: Nullable<Double> read FVALORABERTUA write FVALORABERTUA;

    [Column('VALORFECHAMENTO', ftBCD, 18, 4)]
    [Dictionary('VALORFECHAMENTO', 'Mensagem de valida��o', '0', '', '', taRightJustify)]
    property VALORFECHAMENTO: Nullable<Double> read FVALORFECHAMENTO write FVALORFECHAMENTO;

    [Column('USUARIO', ftInteger)]
    [Dictionary('USUARIO', 'Mensagem de valida��o', '', '', '', taCenter)]
    property USUARIO: Nullable<Integer> read FUSUARIO write FUSUARIO;

    [Column('OPERADOR', ftInteger)]
    [Dictionary('OPERADOR', 'Mensagem de valida��o', '', '', '', taCenter)]
    property OPERADOR: Nullable<Integer> read FOPERADOR write FOPERADOR;

    [Column('DATAALTERACAO', ftDateTime)]
    [Dictionary('DATAALTERACAO', 'Mensagem de valida��o', '', '', '', taCenter)]
    property DATAALTERACAO: Nullable<TDateTime> read FDATAALTERACAO write FDATAALTERACAO;
  end;

implementation

initialization
  TRegisterClass.RegisterEntity(TCAIXA)

end.
