unit ListContatos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    ListBoxContatos: TListBox;
    EditNome: TEdit;
    EditTelefone: TEdit;
    BtnAdicionar: TButton;
    BtnRemover: TButton;
    Nome: TLabel;
    Telefone: TLabel;
    procedure BtnAdicionarClick(Sender: TObject);
    procedure BtnRemoverClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BtnAdicionarClick(Sender: TObject);
var
  Nome, Telefone, Contatos: string;
begin
  // Obter o nome e o telefone digitados
  Nome := EditNome.Text;
  Telefone := EditTelefone.Text;

  // Verificar se os campos est�o preenchidos
  if (Nome = '') or (Telefone = '') then
  begin
    showMessage('Por favor, preencha o nome e telefone!');
    Exit;
  end;

  // Criar o contato no formato "Nome - Telefone"
  Contatos := Nome + ' - ' + Telefone;

  // Adicionar o contato na ListBox
  ListBoxContatos.Items.Add(Contatos);

  // Limpar os campos ap�s adicionar o contato
  EditNome.Clear;
  EditTelefone.Clear;
end;

procedure TForm1.BtnRemoverClick(Sender: TObject);
begin
  // Verificar se algum item est� selecionado na ListBox
  if ListBoxContatos.ItemIndex <> -1 then
    ListBoxContatos.Items.Delete(ListBoxContatos.ItemIndex)
  else
    ShowMessage('Por favor, selecione um contato para remover.');
end;

end.
