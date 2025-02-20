object LoginView: TLoginView
  Width = 640
  Height = 480
  Caption = 'TMS Web Core Demo Code4D - Login'
  OnShow = WebFormShow
  object WebLabel1: TWebLabel
    Left = 224
    Top = 59
    Width = 73
    Height = 15
    Caption = 'Login e senha'
    ElementID = 'h1Login'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object WebLabel2: TWebLabel
    Left = 224
    Top = 111
    Width = 30
    Height = 15
    Caption = 'Login'
    ElementID = 'lbLogin'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object WebLabel3: TWebLabel
    Left = 224
    Top = 164
    Width = 32
    Height = 15
    Caption = 'Senha'
    ElementID = 'lbSenha'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object WebButton1: TWebButton
    Left = 224
    Top = 232
    Width = 96
    Height = 25
    Caption = 'Entrar'
    ElementID = 'btnLogar'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
    OnClick = WebButton1Click
  end
  object WebEdit1: TWebEdit
    Left = 224
    Top = 128
    Width = 121
    Height = 22
    ChildOrder = 1
    ElementID = 'floatingInput'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
  object WebEdit2: TWebEdit
    Left = 224
    Top = 180
    Width = 121
    Height = 22
    ChildOrder = 2
    ElementID = 'floatingPassword'
    HeightPercent = 100.000000000000000000
    WidthPercent = 100.000000000000000000
  end
end
