unit PDVUpdates.Model.Entity.Usuario;

interface

type

  [Entity]
  [Table('USUARIOS', '')]
  [PrimaryKey('ID', 'Chave primaria')]

  TModelEntityUsuario = class
  private
    FID: Integer;
    FPASSWORD: string;
    FNOME: string;
  public
    [Restrictions([NoUpdate, NotNull])]
    [Colunn('ID', tfInteger)]
    [Dictionary('ID', 'Menssagem de validação', '', '', '', taCenter)]
    property ID: Integer read FID write FID;

    [Colunn('NOME', tfInteger)]
    [Dictionary('NOME', 'Menssagem de validação', '', '', '', taLeftJustify)]
    property NOME: string read FNOME write FNOME;

    [Colunn('PASSWORD', tfInteger)]
    [Dictionary('PASSWORD', 'Menssagem de validação', '', '', '',
      taLeftJustify)]
    property PASSWORD: string read FPASSWORD write FPASSWORD;

  end;

implementation

end.
