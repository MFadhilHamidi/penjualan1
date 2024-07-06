unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DB, ZAbstractConnection, ZConnection,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    dbgrd1: TDBGrid;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    Label4: TLabel;
    edt3: TEdit;
    zqry1: TZQuery;
    con2: TZConnection;
    ds2: TDataSource;
    procedure btn1Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.btn1Click(Sender: TObject);
begin
  with zqry1 do
  begin
    SQL.Clear;
    SQL.Add('insert into satuan (name,diskripsi)');
    SQL.Add('values ("'+edt1.Text+'","'+edt2.Text+'")');
    ExecSQL;
    SQL.Text:='select*from satuan';
    Open;
  end;
  edt1.Clear ;
  edt2.Clear;
end;

procedure TForm5.btn4Click(Sender: TObject);
begin
edt1.Clear;
edt2.Clear;
end;

procedure TForm5.btn2Click(Sender: TObject);
begin
  with zqry1 do
  begin
    Edit;
    FieldByName('name').AsString:=edt1.Text;
    FieldByName('diskripsi').AsString:=edt2.Text;
    post;
  end;
end;

procedure TForm5.btn3Click(Sender: TObject);
begin
zqry1.Delete;
end;

end.
