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
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  a: string;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm3.btn1Click(Sender: TObject);
begin
DataModule1.ZQuery1.SQL.Clear;
DataModule1.ZQuery1.SQL.Add('insert into kategori values(null,"'+edt1.Text+'")');
DataModule1.ZQuery1.ExecSQL ;

DataModule1.ZQuery1.SQL.Clear;
DataModule1.ZQuery1.SQL.Add('select * from kategori');
DataModule1.ZQuery1.Open;
ShowMessage('Data Berhasil Disimpan!');
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
end;

procedure TForm3.dbgrd1CellClick(Column: TColumn);
begin
 edt1.Text:= DataModule1.ZQuery1.Fields[1].AsString;
 a:= DataModule1.ZQuery1.Fields[0].AsString;
end;

end.
