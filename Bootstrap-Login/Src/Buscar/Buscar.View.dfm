object BuscarView: TBuscarView
  Width = 640
  Height = 480
  Caption = 'TMS Web Core Demo Code4D - Buscar'
  object WebEdit1: TWebEdit
    Left = 240
    Top = 124
    Width = 121
    Height = 22
    ElementID = 'edtSearch'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object WebButton1: TWebButton
    Left = 240
    Top = 152
    Width = 96
    Height = 25
    Caption = 'Voltar'
    ChildOrder = 1
    ElementID = 'btnSearch'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = WebButton1Click
  end
end
