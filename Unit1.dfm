object frmMain: TfrmMain
  Left = 315
  Top = 96
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'LG RS Control'
  ClientHeight = 477
  ClientWidth = 465
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = pmMain
  Position = poDefault
  ScreenSnap = True
  SnapBuffer = 20
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btnUp: TSpeedButton
    Left = 96
    Top = 204
    Width = 41
    Height = 41
    Enabled = False
    Glyph.Data = {
      F6040000424DF604000000000000360000002800000015000000130000000100
      180000000000C0040000120B0000120B00000000000000000000E6E6E6E6E6E6
      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E600E6E6E6E5E5E5
      E1E1E1D9D9D9D4D4D4D1D1D1D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0
      D0D0D0D0CFCFCFCFCFCFD2D2D2D8D8D8E0E0E0E4E4E4E6E6E600E7E7E7E6E6E6
      DADADAC2C2C2ABABAB9F9F9F9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C
      9C9B9B9B999999999999A2A2A2B7B7B7CFCFCFE0E0E0E6E6E600E8E8E8E8E8E8
      E6E6E6BABABA8D8D8D7171716868686767676767676767676767676767676767
      676565655E5E5E585858636363888888B9B9B9DADADAE5E5E500EAEAEAECECEC
      9090908686869999999F9F9FA1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A2A2
      A2A5A5A5ABABABB3B3B3ABABAB717171ADADADD8D8D8E5E5E500EBEBEBF0F0F0
      C2C2C23B3B3B686868979797A8A8A8ADADADADADADADADADADADADADADADB0B0
      B0BABABAC9C9C9CFCFCF797979737373B3B3B3DADADAE6E6E600EAEAEAF0F0F0
      F4F4F46868682C2C2C636363929292A0A0A0A3A3A3A3A3A3A3A3A3A4A4A4A9A9
      A9B6B6B6BFBFBFADADAD5959598D8D8DC5C5C5E0E0E0E6E6E600E9E9E9EEEEEE
      F4F4F4DBDBDB2D2D2D3030306868688C8C8C9797979898989898989B9B9BA3A3
      A3AEAEAEB3B3B3727272767676ADADADD6D6D6E4E4E4E6E6E600E7E7E7EBEBEB
      F1F1F1F5F5F58A8A8A2626264545457777779090909595959797979D9D9DA8A8
      A8AFAFAF989898676767969696C7C7C7E1E1E1E6E6E6E6E6E600E6E6E6E8E8E8
      EDEDEDF3F3F3ECECEC3A3A3A2626265D5D5D868686949494999999A3A3A3ADAD
      ADAFAFAF6969697F7F7FB4B4B4D9D9D9E5E5E5E6E6E6E6E6E600E6E6E6E7E7E7
      EAEAEAF0F0F0F5F5F5A8A8A82626263C3C3C7272729090909E9E9EA9A9A9B0B0
      B08A8A8A6C6C6C9F9F9FCECECEE2E2E2E6E6E6E6E6E6E6E6E600E6E6E6E6E6E6
      E8E8E8EDEDEDF3F3F3F6F6F6525252262626555555878787A2A2A2AEAEAEABAB
      AB666666868686BDBDBDDDDDDDE5E5E5E6E6E6E6E6E6E6E6E600E6E6E6E6E6E6
      E6E6E6E9E9E9EFEFEFF5F5F5CACACA2626263636367A7A7AA4A4A4B0B0B07D7D
      7D737373A7A7A7D2D2D2E3E3E3E6E6E6E6E6E6E6E6E6E6E6E600E6E6E6E6E6E6
      E6E6E6E7E7E7ECECECF2F2F2F6F6F66F6F6F262626686868A2A2A2A1A1A16464
      648F8F8FC3C3C3DFDFDFE5E5E5E6E6E6E6E6E6E6E6E6E6E6E600E6E6E6E6E6E6
      E6E6E6E6E6E6E9E9E9EEEEEEF4F4F4E0E0E03030305656569999997B7B7B7B7B
      7BAFAFAFD7D7D7E4E4E4E6E6E6E6E6E6E6E6E6E6E6E6E6E6E600E6E6E6E6E6E6
      E6E6E6E6E6E6E7E7E7EBEBEBF1F1F1F5F5F59191914E4E4E9B9B9B8686869B9B
      9BC9C9C9E1E1E1E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E600E6E6E6E6E6E6
      E6E6E6E6E6E6E6E6E6E8E8E8EDEDEDF2F2F2EBEBEB6B6B6BC8C8C8AEAEAEBDBD
      BDDADADAE5E5E5E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E600E6E6E6E6E6E6
      E6E6E6E6E6E6E6E6E6E7E7E7EAEAEAEDEDEDEEEEEEE0E0E0E6E6E6D0D0D0D5D5
      D5E2E2E2E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E600E6E6E6E6E6E6
      E6E6E6E6E6E6E6E6E6E6E6E6E7E7E7E9E9E9EAEAEAE9E9E9E7E7E7E1E1E1E1E1
      E1E5E5E5E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E600}
    OnClick = btnPowerClick
  end
  object btnDown: TSpeedButton
    Left = 96
    Top = 292
    Width = 41
    Height = 41
    Enabled = False
    Glyph.Data = {
      F6040000424DF604000000000000360000002800000015000000130000000100
      180000000000C0040000120B0000120B00000000000000000000E6E6E6E6E6E6
      E6E6E6E6E6E6E6E6E6E6E6E6E7E7E7E9E9E9EAEAEAE9E9E9E7E7E7E1E1E1E1E1
      E1E5E5E5E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E600E6E6E6E6E6E6
      E6E6E6E6E6E6E6E6E6E7E7E7EAEAEAEDEDEDEEEEEEE0E0E0E6E6E6D0D0D0D5D5
      D5E2E2E2E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E600E6E6E6E6E6E6
      E6E6E6E6E6E6E6E6E6E8E8E8EDEDEDF2F2F2EBEBEB6B6B6BC8C8C8AEAEAEBDBD
      BDDADADAE5E5E5E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E600E6E6E6E6E6E6
      E6E6E6E6E6E6E7E7E7EBEBEBF1F1F1F5F5F59191914E4E4E9B9B9B8686869B9B
      9BC9C9C9E1E1E1E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E600E6E6E6E6E6E6
      E6E6E6E6E6E6E9E9E9EEEEEEF4F4F4E0E0E03030305656569999997B7B7B7B7B
      7BAFAFAFD7D7D7E4E4E4E6E6E6E6E6E6E6E6E6E6E6E6E6E6E600E6E6E6E6E6E6
      E6E6E6E7E7E7ECECECF2F2F2F6F6F66F6F6F262626686868A2A2A2A1A1A16464
      648F8F8FC3C3C3DFDFDFE5E5E5E6E6E6E6E6E6E6E6E6E6E6E600E6E6E6E6E6E6
      E6E6E6E9E9E9EFEFEFF5F5F5CACACA2626263636367A7A7AA4A4A4B0B0B07D7D
      7D737373A7A7A7D2D2D2E3E3E3E6E6E6E6E6E6E6E6E6E6E6E600E6E6E6E6E6E6
      E8E8E8EDEDEDF3F3F3F6F6F6525252262626555555878787A2A2A2AEAEAEABAB
      AB666666868686BDBDBDDDDDDDE5E5E5E6E6E6E6E6E6E6E6E600E6E6E6E7E7E7
      EAEAEAF0F0F0F5F5F5A8A8A82626263C3C3C7272729090909E9E9EA9A9A9B0B0
      B08A8A8A6C6C6C9F9F9FCECECEE2E2E2E6E6E6E6E6E6E6E6E600E6E6E6E8E8E8
      EDEDEDF3F3F3ECECEC3A3A3A2626265D5D5D868686949494999999A3A3A3ADAD
      ADAFAFAF6969697F7F7FB4B4B4D9D9D9E5E5E5E6E6E6E6E6E600E7E7E7EBEBEB
      F1F1F1F5F5F58A8A8A2626264545457777779090909595959797979D9D9DA8A8
      A8AFAFAF989898676767969696C7C7C7E1E1E1E6E6E6E6E6E600E9E9E9EEEEEE
      F4F4F4DBDBDB2D2D2D3030306868688C8C8C9797979898989898989B9B9BA3A3
      A3AEAEAEB3B3B3727272767676ADADADD6D6D6E4E4E4E6E6E600EAEAEAF0F0F0
      F4F4F46868682C2C2C636363929292A0A0A0A3A3A3A3A3A3A3A3A3A4A4A4A9A9
      A9B6B6B6BFBFBFADADAD5959598D8D8DC5C5C5E0E0E0E6E6E600EBEBEBF0F0F0
      C2C2C23B3B3B686868979797A8A8A8ADADADADADADADADADADADADADADADB0B0
      B0BABABAC9C9C9CFCFCF797979737373B3B3B3DADADAE6E6E600EAEAEAECECEC
      9090908686869999999F9F9FA1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A2A2
      A2A5A5A5ABABABB3B3B3ABABAB717171ADADADD8D8D8E5E5E500E8E8E8E8E8E8
      E6E6E6BABABA8D8D8D7171716868686767676767676767676767676767676767
      676565655E5E5E585858636363888888B9B9B9DADADAE5E5E500E7E7E7E6E6E6
      DADADAC2C2C2ABABAB9F9F9F9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C
      9C9B9B9B999999999999A2A2A2B7B7B7CFCFCFE0E0E0E6E6E600E6E6E6E5E5E5
      E1E1E1D9D9D9D4D4D4D1D1D1D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0
      D0D0D0D0CFCFCFCFCFCFD2D2D2D8D8D8E0E0E0E4E4E4E6E6E600E6E6E6E6E6E6
      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E600}
    OnClick = btnPowerClick
  end
  object btnLeft: TSpeedButton
    Left = 44
    Top = 248
    Width = 49
    Height = 41
    Enabled = False
    Glyph.Data = {
      22050000424D2205000000000000360000002800000013000000150000000100
      180000000000EC040000120B0000120B00000000000000000000E6E6E6E6E6E6
      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E7E7E7E9E9E9EAEA
      EAEBEBEBEAEAEAE8E8E8E7E7E7E6E6E6E6E6E6000000E6E6E6E6E6E6E6E6E6E6
      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E7E7E7E8E8E8EBEBEBEEEEEEF0F0F0F0F0F0
      ECECECE8E8E8E6E6E6E5E5E5E6E6E6000000E6E6E6E6E6E6E6E6E6E6E6E6E6E6
      E6E6E6E6E6E6E6E8E8E8EAEAEAEDEDEDF1F1F1F4F4F4F4F4F4C2C2C2909090E6
      E6E6DADADAE1E1E1E6E6E6000000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E7E7E7
      E9E9E9EDEDEDF0F0F0F3F3F3F5F5F5DBDBDB6868683B3B3B868686BABABAC2C2
      C2D9D9D9E6E6E6000000E6E6E6E6E6E6E6E6E6E7E7E7E9E9E9ECECECEFEFEFF3
      F3F3F5F5F5ECECEC8A8A8A2D2D2D2C2C2C6868689999998D8D8DABABABD4D4D4
      E6E6E6000000E6E6E6E7E7E7E8E8E8EBEBEBEEEEEEF2F2F2F5F5F5F6F6F6A8A8
      A83A3A3A2626263030306363639797979F9F9F7171719F9F9FD1D1D1E6E6E600
      0000E7E7E7EAEAEAEDEDEDF1F1F1F4F4F4F6F6F6CACACA525252262626262626
      454545686868929292A8A8A8A1A1A16868689C9C9CD0D0D0E6E6E6000000E9E9
      E9EDEDEDF2F2F2F5F5F5E0E0E06F6F6F2626262626263C3C3C5D5D5D7777778C
      8C8CA0A0A0ADADADA1A1A16767679C9C9CD0D0D0E6E6E6000000EAEAEAEEEEEE
      EBEBEB919191303030262626363636555555727272868686909090979797A3A3
      A3ADADADA1A1A16767679C9C9CD0D0D0E6E6E6000000E9E9E9E0E0E06B6B6B4E
      4E4E5656566868687A7A7A878787909090949494959595989898A3A3A3ADADAD
      A1A1A16767679C9C9CD0D0D0E6E6E6000000E7E7E7E6E6E6C8C8C89B9B9B9999
      99A2A2A2A4A4A4A2A2A29E9E9E999999979797989898A3A3A3ADADADA1A1A167
      67679C9C9CD0D0D0E6E6E6000000E1E1E1D0D0D0AEAEAE8686867B7B7BA1A1A1
      B0B0B0AEAEAEA9A9A9A3A3A39D9D9D9B9B9BA4A4A4ADADADA1A1A16767679C9C
      9CD0D0D0E6E6E6000000E1E1E1D5D5D5BDBDBD9B9B9B7B7B7B6464647D7D7DAB
      ABABB0B0B0ADADADA8A8A8A3A3A3A9A9A9B0B0B0A2A2A26767679C9C9CD0D0D0
      E6E6E6000000E5E5E5E2E2E2DADADAC9C9C9AFAFAF8F8F8F7373736666668A8A
      8AAFAFAFAFAFAFAEAEAEB6B6B6BABABAA5A5A56565659B9B9BD0D0D0E6E6E600
      0000E6E6E6E6E6E6E5E5E5E1E1E1D7D7D7C3C3C3A7A7A78686866C6C6C696969
      989898B3B3B3BFBFBFC9C9C9ABABAB5E5E5E999999CFCFCFE6E6E6000000E6E6
      E6E6E6E6E6E6E6E6E6E6E4E4E4DFDFDFD2D2D2BDBDBD9F9F9F7F7F7F67676772
      7272ADADADCFCFCFB3B3B3585858999999CFCFCFE6E6E6000000E6E6E6E6E6E6
      E6E6E6E6E6E6E6E6E6E5E5E5E3E3E3DDDDDDCECECEB4B4B49696967676765959
      59797979ABABAB636363A2A2A2D2D2D2E6E6E6000000E6E6E6E6E6E6E6E6E6E6
      E6E6E6E6E6E6E6E6E6E6E6E5E5E5E2E2E2D9D9D9C7C7C7ADADAD8D8D8D737373
      717171888888B7B7B7D8D8D8E6E6E6000000E6E6E6E6E6E6E6E6E6E6E6E6E6E6
      E6E6E6E6E6E6E6E6E6E6E6E6E6E5E5E5E1E1E1D6D6D6C5C5C5B3B3B3ADADADB9
      B9B9CFCFCFE0E0E0E6E6E6000000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E4E4E4E0E0E0DADADAD8D8D8DADADAE0E0
      E0E4E4E4E6E6E6000000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E5E5E5E5E5E5E6E6E6E6E6E6
      E6E6E6000000}
    OnClick = btnPowerClick
  end
  object btnRight: TSpeedButton
    Left = 140
    Top = 248
    Width = 49
    Height = 41
    Enabled = False
    Glyph.Data = {
      22050000424D2205000000000000360000002800000013000000150000000100
      180000000000EC040000120B0000120B00000000000000000000E6E6E6E6E6E6
      E7E7E7E8E8E8EAEAEAEBEBEBEAEAEAE9E9E9E7E7E7E6E6E6E6E6E6E6E6E6E6E6
      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6000000E6E6E6E5E5E5E6E6E6E8
      E8E8ECECECF0F0F0F0F0F0EEEEEEEBEBEBE8E8E8E7E7E7E6E6E6E6E6E6E6E6E6
      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6000000E6E6E6E1E1E1DADADAE6E6E69090
      90C2C2C2F4F4F4F4F4F4F1F1F1EDEDEDEAEAEAE8E8E8E6E6E6E6E6E6E6E6E6E6
      E6E6E6E6E6E6E6E6E6E6E6000000E6E6E6D9D9D9C2C2C2BABABA8686863B3B3B
      686868DBDBDBF5F5F5F3F3F3F0F0F0EDEDEDE9E9E9E7E7E7E6E6E6E6E6E6E6E6
      E6E6E6E6E6E6E6000000E6E6E6D4D4D4ABABAB8D8D8D9999996868682C2C2C2D
      2D2D8A8A8AECECECF5F5F5F3F3F3EFEFEFECECECE9E9E9E7E7E7E6E6E6E6E6E6
      E6E6E6000000E6E6E6D1D1D19F9F9F7171719F9F9F9797976363633030302626
      263A3A3AA8A8A8F6F6F6F5F5F5F2F2F2EEEEEEEBEBEBE8E8E8E7E7E7E6E6E600
      0000E6E6E6D0D0D09C9C9C686868A1A1A1A8A8A8929292686868454545262626
      262626525252CACACAF6F6F6F4F4F4F1F1F1EDEDEDEAEAEAE7E7E7000000E6E6
      E6D0D0D09C9C9C676767A1A1A1ADADADA0A0A08C8C8C7777775D5D5D3C3C3C26
      26262626266F6F6FE0E0E0F5F5F5F2F2F2EDEDEDE9E9E9000000E6E6E6D0D0D0
      9C9C9C676767A1A1A1ADADADA3A3A39797979090908686867272725555553636
      36262626303030919191EBEBEBEEEEEEEAEAEA000000E6E6E6D0D0D09C9C9C67
      6767A1A1A1ADADADA3A3A39898989595959494949090908787877A7A7A686868
      5656564E4E4E6B6B6BE0E0E0E9E9E9000000E6E6E6D0D0D09C9C9C676767A1A1
      A1ADADADA3A3A39898989797979999999E9E9EA2A2A2A4A4A4A2A2A29999999B
      9B9BC8C8C8E6E6E6E7E7E7000000E6E6E6D0D0D09C9C9C676767A1A1A1ADADAD
      A4A4A49B9B9B9D9D9DA3A3A3A9A9A9AEAEAEB0B0B0A1A1A17B7B7B868686AEAE
      AED0D0D0E1E1E1000000E6E6E6D0D0D09C9C9C676767A2A2A2B0B0B0A9A9A9A3
      A3A3A8A8A8ADADADB0B0B0ABABAB7D7D7D6464647B7B7B9B9B9BBDBDBDD5D5D5
      E1E1E1000000E6E6E6D0D0D09B9B9B656565A5A5A5BABABAB6B6B6AEAEAEAFAF
      AFAFAFAF8A8A8A6666667373738F8F8FAFAFAFC9C9C9DADADAE2E2E2E5E5E500
      0000E6E6E6CFCFCF9999995E5E5EABABABC9C9C9BFBFBFB3B3B3989898696969
      6C6C6C868686A7A7A7C3C3C3D7D7D7E1E1E1E5E5E5E6E6E6E6E6E6000000E6E6
      E6CFCFCF999999585858B3B3B3CFCFCFADADAD7272726767677F7F7F9F9F9FBD
      BDBDD2D2D2DFDFDFE4E4E4E6E6E6E6E6E6E6E6E6E6E6E6000000E6E6E6D2D2D2
      A2A2A2636363ABABAB797979595959767676969696B4B4B4CECECEDDDDDDE3E3
      E3E5E5E5E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6000000E6E6E6D8D8D8B7B7B788
      88887171717373738D8D8DADADADC7C7C7D9D9D9E2E2E2E5E5E5E6E6E6E6E6E6
      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6000000E6E6E6E0E0E0CFCFCFB9B9B9ADAD
      ADB3B3B3C5C5C5D6D6D6E1E1E1E5E5E5E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
      E6E6E6E6E6E6E6E6E6E6E6000000E6E6E6E4E4E4E0E0E0DADADAD8D8D8DADADA
      E0E0E0E4E4E4E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
      E6E6E6E6E6E6E6000000E6E6E6E6E6E6E6E6E6E5E5E5E5E5E5E6E6E6E6E6E6E6
      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
      E6E6E6000000}
    OnClick = btnPowerClick
  end
  object btnOk: TSpeedButton
    Left = 96
    Top = 248
    Width = 41
    Height = 41
    Enabled = False
    Glyph.Data = {
      0E060000424D0E06000000000000360000002800000016000000160000000100
      180000000000D8050000120B0000120B00000000000000000000E6E6E6E6E6E6
      E7E7E7E9E9E9ECECECF0F0F0F2F2F2F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3
      F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F1F1F1EDEDED0000E5E5
      E5E0E0E0DADADADADADA9191917C7C7C78787878787878787878787878787878
      7878787878787878787878787878787878787878797979797979C8C8C8EFEFEF
      0000E4E4E4D3D3D3BABABAACACAC7676765252523636362B2B2B2B2B2B2B2B2B
      2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B262626262626262626AAAA
      AAEFEFEF0000E2E2E2C9C9C99C9C9C8787879A9A9A8787876E6E6E6161616161
      6161616161616161616161616161616161616161616161616159595944444431
      3131ACACACEDEDED0000E2E2E2C3C3C38C8C8C737373ABABABA4A4A49696968B
      8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B808080
      636363434343AEAEAEECECEC0000E1E1E1C2C2C28888886E6E6EAFAFAFABABAB
      9F9F9F9696969696969696969696969696969696969696969696969696969696
      968B8B8B6C6C6C494949AFAFAFECECEC0000E1E1E1C2C2C28888886E6E6EAFAF
      AFABABAB9F9F9F96969696969696969696969696969696969696969696969696
      96969696968B8B8B6C6C6C494949AFAFAFECECEC0000E1E1E1C2C2C28888886E
      6E6EAFAFAFABABAB9F9F9F969696969696969696969696969696969696969696
      9696969696969696968B8B8B6C6C6C494949AFAFAFECECEC0000E1E1E1C2C2C2
      8888886E6E6EAFAFAFABABAB9F9F9F9696969696969696969696969696969696
      969696969696969696969696968B8B8B6C6C6C494949AFAFAFECECEC0000E1E1
      E1C2C2C28888886E6E6EAFAFAFABABAB9F9F9F96969696969696969696969696
      96969696969696969696969696969696968B8B8B6C6C6C494949AFAFAFECECEC
      0000E1E1E1C2C2C28888886E6E6EAFAFAFABABAB9F9F9F969696969696969696
      9696969696969696969696969696969696969696968B8B8B6C6C6C494949AFAF
      AFECECEC0000E1E1E1C2C2C28888886E6E6EAFAFAFABABAB9F9F9F9696969696
      969696969696969696969696969696969696969696969696968B8B8B6C6C6C49
      4949AFAFAFECECEC0000E1E1E1C2C2C28888886E6E6EAFAFAFABABAB9F9F9F96
      96969696969696969696969696969696969696969696969696969696968B8B8B
      6C6C6C494949AFAFAFECECEC0000E1E1E1C2C2C28888886E6E6EAFAFAFABABAB
      9F9F9F9696969696969696969696969696969696969696969696969696969696
      968B8B8B6C6C6C494949AFAFAFECECEC0000E1E1E1C2C2C28888886E6E6EAFAF
      AFABABAB9F9F9F96969696969696969696969696969696969696969696969696
      96969696968B8B8B6C6C6C494949AFAFAFECECEC0000E1E1E1C0C0C084848467
      6767B9B9B9B9B9B9B0B0B0A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9
      A9A9A9A9A9A9A9A9A9A0A0A08484845B5B5BB2B2B2EBEBEB0000E1E1E1BFBFBF
      7F7F7F5B5B5BCACACACECECEC8C8C8C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2
      C2C2C2C2C2C2C2C2C2C2C2C2C2BCBCBCA7A7A7828282BABABAE8E8E80000E2E2
      E2C4C4C4858585575757D6D6D6D8D8D8D3D3D3CFCFCFCFCFCFCFCFCFCFCFCFCF
      CFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCFCBCBCBBEBEBEA6A6A6AAAAAAE0E0E0
      0000E3E3E3CDCDCD9C9C9C5B5B5B3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A
      3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3C3C3C6B6B6BA4A4
      A4D1D1D10000E5E5E5DADADAC1C1C19C9C9C7C7C7C6868686161616161616161
      6161616161616161616161616161616161616161616161616166666676767695
      9595B9B9B9D5D5D50000E5E5E5E2E2E2DADADACFCFCFC5C5C5BDBDBDBABABABA
      BABABABABABABABABABABABABABABABABABABABABABABABABABABABABABBBBBB
      C0C0C0CACACAD7D7D7E0E0E00000E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6
      E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E60000}
    OnClick = btnPowerClick
  end
  object btnSleep: TButton
    Left = 160
    Top = 304
    Width = 57
    Height = 25
    Caption = 'Sleep'
    Enabled = False
    TabOrder = 0
    OnClick = btnPowerClick
  end
  object btnInput: TButton
    Left = 16
    Top = 48
    Width = 57
    Height = 25
    Caption = 'Input'
    Enabled = False
    TabOrder = 1
    OnClick = btnPowerClick
  end
  object btnBack: TButton
    Left = 16
    Top = 304
    Width = 57
    Height = 25
    Caption = 'Back'
    Enabled = False
    TabOrder = 2
    OnClick = btnPowerClick
  end
  object btnExit: TButton
    Left = 160
    Top = 208
    Width = 57
    Height = 25
    Caption = 'Exit'
    Enabled = False
    TabOrder = 3
    OnClick = btnPowerClick
  end
  object btnPicture: TButton
    Left = 16
    Top = 168
    Width = 57
    Height = 25
    Caption = 'Picture'
    Enabled = False
    TabOrder = 4
    OnClick = btnPowerClick
  end
  object btnSound: TButton
    Left = 88
    Top = 168
    Width = 57
    Height = 25
    Caption = 'Sound'
    Enabled = False
    TabOrder = 5
    OnClick = btnPowerClick
  end
  object btnAdjust: TButton
    Left = 88
    Top = 424
    Width = 57
    Height = 25
    Caption = 'Adjust'
    Enabled = False
    TabOrder = 6
    OnClick = btnPowerClick
  end
  object BtnSAP: TButton
    Left = 160
    Top = 384
    Width = 57
    Height = 25
    Caption = 'Sap'
    Enabled = False
    TabOrder = 7
    OnClick = btnPowerClick
  end
  object btnMenu: TButton
    Left = 16
    Top = 208
    Width = 57
    Height = 25
    Caption = 'Menu'
    Enabled = False
    TabOrder = 8
    OnClick = btnPowerClick
  end
  object btnCC: TButton
    Left = 88
    Top = 384
    Width = 57
    Height = 25
    Caption = 'CC'
    Enabled = False
    TabOrder = 9
    OnClick = btnPowerClick
  end
  object btnFavorite: TButton
    Left = 16
    Top = 384
    Width = 57
    Height = 25
    Caption = 'Fav'
    Enabled = False
    TabOrder = 10
    OnClick = btnPowerClick
  end
  object btnVolDown: TButton
    Left = 160
    Top = 88
    Width = 57
    Height = 25
    Caption = 'Vol-'
    Enabled = False
    TabOrder = 11
    OnClick = btnPowerClick
  end
  object btnVolUp: TButton
    Left = 160
    Top = 48
    Width = 57
    Height = 25
    Caption = 'Vol+'
    Enabled = False
    TabOrder = 12
    OnClick = btnPowerClick
  end
  object btnChnlUp: TButton
    Left = 16
    Top = 88
    Width = 57
    Height = 25
    Caption = 'Ch+'
    Enabled = False
    TabOrder = 13
    OnClick = btnPowerClick
  end
  object btnChnlDown: TButton
    Left = 16
    Top = 128
    Width = 57
    Height = 25
    Caption = 'Ch-'
    Enabled = False
    TabOrder = 14
    OnClick = btnPowerClick
  end
  object btnTV: TButton
    Left = 160
    Top = 168
    Width = 57
    Height = 25
    Caption = 'TV'
    Enabled = False
    TabOrder = 15
    OnClick = btnPowerClick
  end
  object btnMinus: TButton
    Left = 16
    Top = 424
    Width = 57
    Height = 25
    Enabled = False
    TabOrder = 16
    OnClick = btnPowerClick
  end
  object btnMute: TButton
    Left = 160
    Top = 128
    Width = 57
    Height = 25
    Caption = 'Mute'
    Enabled = False
    TabOrder = 17
    OnClick = btnPowerClick
  end
  object btnF43: TButton
    Left = 16
    Top = 344
    Width = 57
    Height = 25
    Caption = '4:3'
    Enabled = False
    TabOrder = 18
    OnClick = btnPowerClick
  end
  object btnF169: TButton
    Left = 88
    Top = 344
    Width = 57
    Height = 25
    Caption = '16:9'
    Enabled = False
    TabOrder = 19
    OnClick = btnPowerClick
  end
  object btnZoom: TButton
    Left = 160
    Top = 344
    Width = 57
    Height = 25
    Caption = 'Zoom'
    Enabled = False
    TabOrder = 20
    OnClick = btnPowerClick
  end
  object btnPower: TButton
    Left = 16
    Top = 8
    Width = 57
    Height = 25
    Caption = 'Power'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 7105644
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 21
    OnClick = btnPowerClick
  end
  object tbVolume: TTrackBar
    Left = 100
    Top = 40
    Width = 37
    Height = 129
    Max = 100
    Orientation = trVertical
    Position = 90
    TabOrder = 22
    ThumbLength = 30
    TickMarks = tmBoth
    TickStyle = tsNone
    OnChange = tbVolumeChange
  end
  object cbbSources: TComboBox
    Left = 88
    Top = 12
    Width = 129
    Height = 21
    Style = csDropDownList
    TabOrder = 23
    OnChange = cbbSourcesChange
  end
  object button_pnl: TButton
    Left = 160
    Top = 424
    Width = 57
    Height = 25
    Caption = '>>>>>'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 24
    OnClick = button_pnlClick
  end
  object pnlTrackBars: TPanel
    Left = 232
    Top = 0
    Width = 241
    Height = 457
    BevelOuter = bvNone
    TabOrder = 25
    Visible = False
    object bbxContrast: TGroupBox
      Left = 8
      Top = 8
      Width = 217
      Height = 49
      Caption = 'Contrast'
      Enabled = False
      TabOrder = 0
      object tbContrast: TTrackBar
        Left = 4
        Top = 12
        Width = 209
        Height = 31
        Enabled = False
        Max = 100
        TabOrder = 0
        ThumbLength = 26
        TickMarks = tmBoth
        TickStyle = tsNone
        OnChange = tbContrastChange
      end
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 64
      Width = 217
      Height = 49
      Caption = 'Brightness'
      Enabled = False
      TabOrder = 1
      object tbBrightness: TTrackBar
        Left = 4
        Top = 12
        Width = 209
        Height = 31
        Enabled = False
        Max = 100
        TabOrder = 0
        ThumbLength = 26
        TickMarks = tmBoth
        TickStyle = tsNone
        OnChange = tbContrastChange
      end
    end
    object GroupBox3: TGroupBox
      Left = 8
      Top = 120
      Width = 217
      Height = 49
      Caption = 'Color'
      Enabled = False
      TabOrder = 2
      object tbColor: TTrackBar
        Left = 4
        Top = 12
        Width = 209
        Height = 31
        Enabled = False
        Max = 100
        TabOrder = 0
        ThumbLength = 26
        TickMarks = tmBoth
        TickStyle = tsNone
        OnChange = tbContrastChange
      end
    end
    object GroupBox4: TGroupBox
      Left = 8
      Top = 176
      Width = 217
      Height = 49
      Caption = 'Tint'
      Enabled = False
      TabOrder = 3
      object tbTint: TTrackBar
        Left = 4
        Top = 12
        Width = 209
        Height = 31
        Enabled = False
        Max = 100
        TabOrder = 0
        ThumbLength = 26
        TickMarks = tmBoth
        TickStyle = tsNone
        OnChange = tbContrastChange
      end
    end
    object GroupBox5: TGroupBox
      Left = 8
      Top = 232
      Width = 217
      Height = 49
      Caption = 'Sharpness'
      Enabled = False
      TabOrder = 4
      object tbSharpness: TTrackBar
        Left = 4
        Top = 12
        Width = 209
        Height = 31
        Enabled = False
        Max = 100
        TabOrder = 0
        ThumbLength = 26
        TickMarks = tmBoth
        TickStyle = tsNone
        OnChange = tbContrastChange
      end
    end
    object GroupBox6: TGroupBox
      Left = 8
      Top = 288
      Width = 217
      Height = 49
      Caption = 'Treble'
      Enabled = False
      TabOrder = 5
      object tbTreble: TTrackBar
        Left = 4
        Top = 12
        Width = 209
        Height = 31
        Enabled = False
        Max = 100
        TabOrder = 0
        ThumbLength = 26
        TickMarks = tmBoth
        TickStyle = tsNone
        OnChange = tbContrastChange
      end
    end
    object GroupBox7: TGroupBox
      Left = 8
      Top = 344
      Width = 217
      Height = 49
      Caption = 'Bass'
      Enabled = False
      TabOrder = 6
      object tbBass: TTrackBar
        Left = 4
        Top = 12
        Width = 209
        Height = 31
        Enabled = False
        Max = 100
        TabOrder = 0
        ThumbLength = 26
        TickMarks = tmBoth
        TickStyle = tsNone
        OnChange = tbContrastChange
      end
    end
    object GroupBox8: TGroupBox
      Left = 8
      Top = 400
      Width = 217
      Height = 49
      Caption = 'Balance'
      Enabled = False
      TabOrder = 7
      object tbBalance: TTrackBar
        Left = 4
        Top = 12
        Width = 209
        Height = 31
        Enabled = False
        Max = 100
        Position = 50
        TabOrder = 0
        ThumbLength = 26
        TickMarks = tmBoth
        TickStyle = tsNone
        OnChange = tbContrastChange
      end
    end
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 460
    Width = 465
    Height = 17
    Align = alBottom
    Alignment = taLeftJustify
    BevelInner = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 26
    object pnlConn: TPanel
      Left = 416
      Top = 2
      Width = 47
      Height = 13
      Align = alRight
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
  end
  object tmrSend: TTimer
    Enabled = False
    Interval = 200
    OnTimer = tmrSendTimer
    Left = 352
    Top = 224
  end
  object XPManifest1: TXPManifest
    Left = 344
    Top = 304
  end
  object pmMain: TPopupMenu
    Left = 376
    Top = 56
    object PortCOM1: TMenuItem
      Caption = 'Port COM'
      OnClick = PortCOM1Click
    end
    object Identyfikator1: TMenuItem
      Caption = 'Identyfikator'
      OnClick = Identyfikator1Click
    end
    object About1: TMenuItem
      Caption = 'O programie...'
      OnClick = About1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object miClose: TMenuItem
      Caption = 'Zamknij'
      OnClick = miCloseClick
    end
  end
  object tmrCom: TTimer
    Interval = 500
    OnTimer = tmrComTimer
    Left = 336
    Top = 144
  end
  object xml: TXMLDocument
    Left = 304
    Top = 96
    DOMVendorDesc = 'MSXML'
  end
end
