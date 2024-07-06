object Form5: TForm5
  Left = 240
  Top = 187
  Width = 770
  Height = 450
  Caption = 'SATUAN'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 40
    Width = 590
    Height = 23
    Caption = 'MUHAMMAD FADHIL HAMIDI - 2210010243 - TI REG 4M BJM'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 136
    Top = 104
    Width = 29
    Height = 13
    Caption = 'NAMA'
  end
  object Label3: TLabel
    Left = 136
    Top = 136
    Width = 50
    Height = 13
    Caption = 'DISKRIPSI'
  end
  object Label4: TLabel
    Left = 112
    Top = 352
    Width = 86
    Height = 13
    Caption = 'MASUKKAN NAMA'
  end
  object edt1: TEdit
    Left = 200
    Top = 104
    Width = 369
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 200
    Top = 136
    Width = 369
    Height = 21
    TabOrder = 1
  end
  object dbgrd1: TDBGrid
    Left = 136
    Top = 208
    Width = 433
    Height = 120
    DataSource = ds2
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object btn1: TButton
    Left = 200
    Top = 168
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 3
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 296
    Top = 168
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 4
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 392
    Top = 168
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 5
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 488
    Top = 168
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 6
    OnClick = btn4Click
  end
  object edt3: TEdit
    Left = 208
    Top = 352
    Width = 361
    Height = 21
    TabOrder = 7
    Text = 'Muhammad Fadhil Hamidi - 221010243 - TI REG 4M BJM - UTS/UAS'
  end
  object zqry1: TZQuery
    Connection = con2
    Active = True
    SQL.Strings = (
      'select * from satuan')
    Params = <>
    Left = 688
    Top = 152
  end
  object con2: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3307
    Database = 'db_penjualan'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Users\asus\Downloads\Delphi - Mysql\VISUAL2MFadhilH\libmysql3' +
      '2.dll'
    Left = 712
    Top = 88
  end
  object ds2: TDataSource
    DataSet = zqry1
    Left = 640
    Top = 88
  end
end
