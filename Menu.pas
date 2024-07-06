unit Menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls;

type
  TForm1 = class(TForm)
    mm1: TMainMenu;
    FILE1: TMenuItem;
    LOGIN1: TMenuItem;
    LOGOUT1: TMenuItem;
    DATAMASTER1: TMenuItem;
    KATEGORI1: TMenuItem;
    SATUAN1: TMenuItem;
    SUPPLIER1: TMenuItem;
    KUSTOMER1: TMenuItem;
    RANSAKSI1: TMenuItem;
    PENJUALAN1: TMenuItem;
    PEMBELIAN1: TMenuItem;
    LAPORAN1: TMenuItem;
    LAPORANPENJUALAN1: TMenuItem;
    LAPORANPEMBELIAN1: TMenuItem;
    LAPORANBARANG1: TMenuItem;
    edt1: TEdit;
    Label1: TLabel;
    procedure LOGIN1Click(Sender: TObject);
    procedure FORMshow(Sender: TObject);
    procedure KATEGORI1Click(Sender: TObject);
    procedure SATUAN1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Login, Unit3, Unit5;

{$R *.dfm}

procedure TForm1.LOGIN1Click(Sender: TObject);
begin
Form2.Show;
end;

procedure TForm1.FORMshow(Sender: TObject);
begin
 mm1.Items[1].Visible:=False;
 mm1.Items[2].Visible:= False;
 mm1.Items[3].Visible:= False;
end;

procedure TForm1.KATEGORI1Click(Sender: TObject);
begin
Form3.Show;
Form3.posisiawal;
end;

procedure TForm1.SATUAN1Click(Sender: TObject);
begin
Form5.Show;
end;

end.
