object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 190
  ClientWidth = 310
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Nome: TLabel
    Left = 8
    Top = 67
    Width = 33
    Height = 15
    Caption = 'Nome'
  end
  object Telefone: TLabel
    Left = 56
    Top = 67
    Width = 44
    Height = 15
    Caption = 'Telefone'
  end
  object ListBoxContatos: TListBox
    Left = 8
    Top = 88
    Width = 294
    Height = 97
    ItemHeight = 15
    TabOrder = 0
  end
  object EditNome: TEdit
    Left = 104
    Top = 8
    Width = 121
    Height = 23
    TabOrder = 1
    Text = 'EditNome'
  end
  object EditTelefone: TEdit
    Left = 104
    Top = 37
    Width = 121
    Height = 23
    TabOrder = 2
    Text = 'EditTelefone'
  end
  object BtnAdicionar: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'BtnAdicionar'
    TabOrder = 3
    OnClick = BtnAdicionarClick
  end
  object BtnRemover: TButton
    Left = 8
    Top = 36
    Width = 75
    Height = 25
    Caption = 'BtnRemover'
    TabOrder = 4
    OnClick = BtnRemoverClick
  end
end
