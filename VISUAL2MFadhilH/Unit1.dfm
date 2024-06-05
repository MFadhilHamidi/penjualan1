object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 155
  Top = 165
  Height = 232
  Width = 254
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3307
    Database = 'db_penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Users\asus\Downloads\Delphi - Mysql\VISUAL 2 DELPHY\libmysql3' +
      '2.dll'
    Left = 40
    Top = 48
  end
  object ZQuery1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from kategori')
    Params = <>
    Left = 112
    Top = 48
  end
  object ds1: TDataSource
    DataSet = ZQuery1
    Left = 120
    Top = 112
  end
end
