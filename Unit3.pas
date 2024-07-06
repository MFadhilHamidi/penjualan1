unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    edt1: TEdit;
    dbgrd1: TDBGrid;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    Label2: TLabel;
    btn4: TButton;
    edt2: TEdit;
    btn5: TButton;
    btn6: TButton;
    btn7: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
    procedure btn6Click(Sender: TObject);
    procedure posisiawal;
    procedure bersih;
    procedure btn4Click(Sender: TObject);
    procedure edt2Change(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
  private
    { Private declarations }
  public

  end;

var
  Form3: TForm3;
  a: string;

implementation

uses Unit1, Unit4;

{$R *.dfm}

procedure Tform3.posisiawal;
begin
      btn6.Enabled:= True;
      btn1.Enabled:= False;
      btn2.Enabled:= False;
      btn5.Enabled:= True;
      btn3.Enabled:= False;
      edt1.clear;
      edt1.Enabled:= False;
end;

procedure TForm3.bersih;
begin
  edt1.clear;
end;

procedure TForm3.btn1Click(Sender: TObject);
begin
DataModule1.ZQuery1.SQL.Clear;
DataModule1.ZQuery1.SQL.Add('insert into kategori values(null,"'+edt1.Text+'")');
DataModule1.ZQuery1.ExecSQL ;

DataModule1.ZQuery1.SQL.Clear;
DataModule1.ZQuery1.SQL.Add('select * from kategori');
DataModule1.ZQuery1.Open;
ShowMessage('Data Berhasil Disimpan!');
posisiawal;
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
DataModule1.ZQuery1.SQL.Clear;
DataModule1.ZQuery1.SQL.Add('update kategori set name="'+edt1.text+'" where id= "'+a+'"');
DataModule1.ZQuery1.ExecSQL ;

DataModule1.ZQuery1.SQL.Clear;
DataModule1.ZQuery1.SQL.Add('select * from kategori');
DataModule1.ZQuery1.Open;
ShowMessage('Data Berhasil Diupdate!');
posisiawal;
end;

procedure TForm3.btn3Click(Sender: TObject);
begin
DataModule1.ZQuery1.SQL.Clear;
DataModule1.ZQuery1.SQL.Add('delete from kategori where id= "'+a+'"');
DataModule1.ZQuery1.ExecSQL ;

DataModule1.ZQuery1.SQL.Clear;
DataModule1.ZQuery1.SQL.Add('select * from kategori');
DataModule1.ZQuery1.Open;
ShowMessage('Data Berhasil Diupdate!');
posisiawal;
end;

procedure TForm3.dbgrd1CellClick(Column: TColumn);
begin
 edt1.Text:= DataModule1.ZQuery1.Fields[1].AsString;
 a:= DataModule1.ZQuery1.Fields[0].AsString;
end;

procedure TForm3.btn6Click(Sender: TObject);
begin
edt1.Clear;
end;

procedure TForm3.btn4Click(Sender: TObject);
begin
  with DataModule1.ZQuery1 do
  begin
    SQL.Clear;
    SQL.Add('select * from KATEGORI where name ="'+edt1.Text+'"');
    Open;
  end;
end;

procedure TForm3.edt2Change(Sender: TObject);
begin
with DataModule1.ZQuery1 do
begin
  SQL.Clear;
  SQL.Add('select * from KATEGORI where name like "%'+edt2.Text+'%"');
  Open;
  end;
end;


procedure TForm3.btn5Click(Sender: TObject);
begin

      btn6.Enabled:= True;
      btn1.Enabled:= True;
      btn2.Enabled:= True;
      btn5.Enabled:= False;
      btn3.Enabled:= True;
      edt1.clear;
      edt1.Enabled:= Enabled;

end;

procedure TForm3.btn7Click(Sender: TObject);
begin
Form4.frxReport1.ShowReport();
end;

end.
