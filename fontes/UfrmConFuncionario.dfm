object frmConsFuncionario: TfrmConsFuncionario
  Left = 0
  Top = 0
  Caption = 'frmConsFuncionario'
  ClientHeight = 365
  ClientWidth = 361
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
    Width = 361
    Height = 365
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 8
    ExplicitTop = -72
    ExplicitWidth = 534
    object Label1: TLabel
      Left = 13
      Top = 144
      Width = 47
      Height = 13
      Caption = 'Matr'#237'cula:'
    end
    object Label2: TLabel
      Left = 13
      Top = 168
      Width = 30
      Height = 13
      Caption = 'Setor:'
    end
    object Label3: TLabel
      Left = 13
      Top = 192
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object dbgPesquisa: TDBGrid
      Left = 0
      Top = 232
      Width = 353
      Height = 133
      Cursor = crHandPoint
      TabStop = False
      BorderStyle = bsNone
      DataSource = dsPes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'FUN_MATRICULA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FUN_NOME'
          Width = 217
          Visible = True
        end>
    end
    object bbtSair: TBitBtn
      Left = 278
      Top = 16
      Width = 75
      Height = 41
      Caption = 'Sair'
      Glyph.Data = {
        B6020000424DB602000000000000B60100002800000010000000100000000100
        08000000000000010000120B0000120B0000600000006000000000000000FFFF
        FF00FF00FF00FCD1D3004E1E1F00C54D4E00C9525300C24F5000D4585900C954
        5500CF575800CB555600D75C5D00D55C5D00D05A5B00CF595A00B74F5200B24D
        4E00B64F5000D55E5F00BD535600D75F6000DD636400C2575A00C6595B00E267
        6800DD656600DA636400E3686900DE666700EB6D6E00E96C6D00F2737400F073
        7400EE727300F7777900D1656600F0757600F6797A00F77A7B00FE7F8000FB7E
        7F00FF818200FC7F8000DA6E6F00FF828300FE818200FF838400E5767700E073
        7400E2757600FF868700FF888900CF6E7000CB6C6D00CC6E7000FE8B8C00EB81
        8200E67E7F009C565700FB9A9C00F8AAAB00F7B5B600FAD3D400A64B4B00A94D
        4D00F8787900D76B6B00CF6E6E00824B4B00FAEBC500FCEFC700FFF2CC00FCFB
        CF00FCFBD100FFFFD300FFFFD400FFFFD500FFFFD700E6FCC700A5D8970050D1
        6F0026B149002AB44D001BBB490023B54A002DC7580042C966000CBC410010BB
        430013C1480013BC450016BD480016BC48001CBF4C001EBC4C00020202020202
        0245040202020202020202020202454540410402020202020202020245451207
        05110445454545454502020245080B09061004383C3D3E3E45020202450C0E0F
        0A1404555A5C583E45020202451615130D1704535E5F5B3E45020202451C1A1B
        1D1804525D54593E45020202451E193A3F3704505157563E4502020245201F39
        033504484E4C4F3E4502020245422522212404474D4B4E3E4502020245282726
        234304474D4B4D3E45020202452F2B29282C04474D4B4D3E4502020245342D2A
        2D3104474D4B4D3E450202024545322E333004464A494A3E450202020202453B
        3644044545454545450202020202020245450402020202020202}
      TabOrder = 1
      OnClick = bbtSairClick
    end
    object bbtLocalizar: TBitBtn
      Left = 13
      Top = 16
      Width = 169
      Height = 41
      Caption = '&Pesquisar Funcion'#225'rio'
      Glyph.Data = {
        96030000424D9603000000000000960200002800000010000000100000000100
        08000000000000010000120B0000120B0000980000009800000000000000FFFF
        FF0034274B00FF00FF00694F67006B52650063454A006F585B00020101006249
        490089888800804B4600895651008F5B5500FAE7E500F2533D00CF3B2000F246
        2800FF624800FC7B6600C73A1C00FA5F3F00EE4C260095331C00FC6843009634
        1800FF633600963A2000FB724B00923314008F331700D95A3300E96B4400DC70
        4F00E1957D0091321100120C0A00BF9F9300977F750004020100F8EEE900AF8B
        7800EDE0D800C29C8200997B6200D3AD8A00A08974004D484300F3B67200EFBC
        8300F0BB7B00F3C07E00F7C58300EFC18700E9C49500E2C49900F3D09600EACF
        9E00FFE5A500EEE2C000FFEAAB0082775700F7E6B200FFEDAB00FAF2C200FFF7
        C100FAF7D500FEFBCB00FFFCCF00FFFED500FFFEE900FFFFC900FFFFCE00FFFF
        D100FFFFD400FFFFD500FFFFDA00FFFFDC00FFFFDE00FCFCE0003A6E25002A5F
        4100275D4E00181919000F3A4000589EC0001A6F9F001B70A1003B89B4000647
        70002F759E0000406D000343700008598E00187EC600092E4700166496002381
        C200356C9200013F6C00094F83001F7DC40039ADFF004A93C7002382CF0035A4
        FF0036A6FF0038A5FF003AA7FF0013263500466A88001D76C5002C98FC002E9C
        FF00309DFC003F7FBB000C66C2002891FB002D97FB003996EF003A96ED006268
        6E000A69D3000F6CD3001177E3001174E1000F59A600105AA7001970CE00268B
        FB002791FF000A4B9A000F4A8E001662BA004B6687001174FA00116FEB001353
        AA00114892001E7EFC0048638700445C7B001B73F0001A70EB005077AF000E64
        E6000C3793002C53A6005D677E0024419100192B65001818180003030303798D
        0303030303030303030303030303677C8C03030303030303030303030303786C
        7D860303030303030303031E171B19776B7B940303030303030323111218130F
        906973070C0C0C0303031D151C1F0E21105226293B4D450C0C0303161A222820
        143D2C3A4149474E0C0303066E5A6251502E2D343E4B48484F0C037A87889174
        5409373035444A484C0C5B807175818B83022B3C31384043420C636F68727682
        7F96052A4633323F0C035D5C64666A707E9293042539360C0D0357556061655E
        898F8E950B0C0C030303035856595F6D84858A0303030303030303030303240A
        2F27000303030303030303030303035397080303030303030303}
      TabOrder = 2
      OnClick = bbtLocalizarClick
    end
    object GroupBox1: TGroupBox
      Left = 13
      Top = 63
      Width = 208
      Height = 66
      Caption = 'Consulta (Nome) via Digita'#231#227'o: '
      TabOrder = 3
      object edtNome: TEdit
        Left = -228
        Top = 163
        Width = 185
        Height = 21
        TabOrder = 0
      end
      object Edit1: TEdit
        Left = 16
        Top = 24
        Width = 153
        Height = 21
        TabOrder = 1
        OnChange = Edit1Change
      end
    end
    object dbMatricula: TDBEdit
      Left = 61
      Top = 139
      Width = 121
      Height = 21
      DataField = 'FUN_MATRICULA'
      DataSource = dsPes
      TabOrder = 4
    end
    object dbSetor: TDBEdit
      Left = 61
      Top = 168
      Width = 121
      Height = 21
      DataField = 'FUN_SETOR_ID'
      DataSource = dsPes
      TabOrder = 5
    end
    object dbNome: TDBEdit
      Left = 61
      Top = 195
      Width = 121
      Height = 21
      DataField = 'FUN_NOME'
      DataSource = dsPes
      TabOrder = 6
    end
  end
  object dsPes: TDataSource
    DataSet = DataModule1.tbFuncionario
    Left = 360
    Top = 80
  end
  object tbConFunc: TIBTable
    Database = DataModule1.BANCO_DADOSII
    Transaction = DataModule1.IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'tbConFunc'
    UniDirectional = False
    Left = 360
    Top = 136
  end
  object dsPesquisa: TDataSource
    DataSet = DataModule1.QryConsFuncionario
    Left = 368
    Top = 184
  end
end
