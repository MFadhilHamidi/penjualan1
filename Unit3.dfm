object Form3: TForm3
  Left = 526
  Top = 282
  Width = 582
  Height = 450
  Caption = 'KATEGORI'
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
    Left = 64
    Top = 48
    Width = 28
    Height = 13
    Caption = 'NAME'
  end
  object Label2: TLabel
    Left = 24
    Top = 312
    Width = 79
    Height = 13
    Caption = 'MASUKAN NAME'
  end
  object edt1: TEdit
    Left = 104
    Top = 48
    Width = 225
    Height = 21
    TabOrder = 0
  end
  object dbgrd1: TDBGrid
    Left = 80
    Top = 152
    Width = 320
    Height = 120
    DataSource = DataModule1.ds1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object btn1: TButton
    Left = 112
    Top = 104
    Width = 75
    Height = 25
    Caption = 'TAMBAH'
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 192
    Top = 104
    Width = 75
    Height = 25
    Caption = 'UBAH'
    TabOrder = 3
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 272
    Top = 104
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 4
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 240
    Top = 312
    Width = 75
    Height = 25
    Caption = 'CARI'
    TabOrder = 5
    OnClick = btn4Click
  end
  object edt2: TEdit
    Left = 112
    Top = 312
    Width = 121
    Height = 21
    TabOrder = 6
    OnChange = edt2Change
  end
  object btn5: TButton
    Left = 32
    Top = 104
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 7
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 352
    Top = 104
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 8
    OnClick = btn6Click
  end
  object btn7: TButton
    Left = 432
    Top = 104
    Width = 75
    Height = 25
    Caption = 'LAPORAN'
    TabOrder = 9
    OnClick = btn7Click
  end
end
