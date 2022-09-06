object Dm: TDm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 150
  Width = 349
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=SQLite')
    Left = 16
    Top = 24
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 104
    Top = 8
  end
  object FDPhysMSSQLDriverLink1: TFDPhysMSSQLDriverLink
    Left = 240
    Top = 8
  end
end
