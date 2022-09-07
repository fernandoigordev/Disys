object Dm: TDm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 150
  Width = 349
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Repositories\Disys\database.sqlite'
      'DriverID=SQLite')
    LoginPrompt = False
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
  object QStoreList: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from store')
    Left = 240
    Top = 64
  end
  object QReport: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select s.*, e.* from store s '
      'left join employee e on e.Store_Id = s.id ')
    Left = 72
    Top = 80
  end
end
