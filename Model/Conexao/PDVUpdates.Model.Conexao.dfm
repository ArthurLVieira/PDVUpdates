object DataModule1: TDataModule1
  OldCreateOrder = True
  Height = 480
  Width = 640
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\user\Documents\GitHub\PDVUpdates\DataBase\PDVU' +
        'PDATES.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Port=3050'
      'DriverID=FB')
    Left = 216
    Top = 128
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 376
    Top = 128
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 312
    Top = 216
  end
end
