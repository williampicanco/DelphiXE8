object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'frmSetConsFun'
  ClientHeight = 312
  ClientWidth = 407
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 407
    Height = 81
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 8
      Top = 13
      Width = 78
      Height = 13
      Caption = 'Veja os Setores '
    end
    object Label1: TLabel
      Left = 208
      Top = 13
      Width = 77
      Height = 13
      Caption = 'C'#243'digo do Setor'
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 8
      Top = 32
      Width = 153
      Height = 21
      KeyField = 'SET_SETOR_ID'
      ListField = 'SET_DESCRICAO'
      ListSource = DataSource1
      TabOrder = 0
      OnClick = DBLookupComboBox1Click
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 208
      Top = 32
      Width = 153
      Height = 21
      KeyField = 'FUN_SETOR_ID'
      ListField = 'FUN_SETOR_ID'
      ListSource = DataSource2
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 81
    Width = 407
    Height = 231
    Align = alClient
    TabOrder = 1
    ExplicitTop = 72
    ExplicitWidth = 385
    ExplicitHeight = 309
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 405
      Height = 229
      Align = alClient
      DataSource = DataSource2
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'FUN_MATRICULA'
          Width = 93
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FUN_NOME'
          Width = 159
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FUN_SETOR_ID'
          Width = 104
          Visible = True
        end>
    end
  end
  object DataSource1: TDataSource
    DataSet = DataModule1.tbSetor
    Left = 432
    Top = 8
  end
  object DataSource2: TDataSource
    DataSet = DataModule1.tbFuncionario
    Left = 480
    Top = 8
  end
end
