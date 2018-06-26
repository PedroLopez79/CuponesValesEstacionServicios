unit ufrmCropImage;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CustomModule, Vcl.ExtCtrls, Vcl.Menus,
  Vcl.ExtDlgs;

type
  Tfrmcropimage = class(TForm)
    MainMenu1: TMainMenu;
    Archivo1: TMenuItem;
    CargarArchivo1: TMenuItem;
    Guardar1: TMenuItem;
    ScrollBox1: TScrollBox;
    Image1: TImage;
    OpenPictureDialog1: TOpenPictureDialog;
    ReducirImagen1: TMenuItem;
    ReducirImagen500x5001: TMenuItem;
    procedure CargarArchivo1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Guardar1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ReducirImagen1Click(Sender: TObject);
    procedure ReducirImagen500x5001Click(Sender: TObject);
  private
    { Private declarations }
    procedure Draw_Res;
    procedure resize_image(escala: integer);
  public
    { Public declarations }
  end;

var
  frmcropimage: Tfrmcropimage;
  img: TMemoryStream;

function Abrir_CropImage:TMemoryStream;

implementation
uses JPEG;

var
  jpg_temp:TJPEGImage;
  isMouseDown:boolean = false;
  X0,Y0,X1,Y1: integer;

{$R *.dfm}

function Abrir_CropImage:TMemoryStream;
begin
  frmcropimage:=Tfrmcropimage.Create(Application);
  frmcropimage.ShowModal;

  Result:= img;

  frmcropimage.Free;
end;

procedure Tfrmcropimage.CargarArchivo1Click(Sender: TObject);
begin
  inherited;
  OpenPictureDialog1.Filter:= 'JPG|*.jpeg;*.jpg';
  if openPictureDialog1.Execute then
  begin
     jpg_temp.LoadFromFile(OpenPictureDialog1.FileName);
     Draw_Res;
  end;
  ReducirImagen1.Enabled:= True;
  ReducirImagen500x5001.Enabled:= True;
end;



procedure Tfrmcropimage.Draw_Res;
var bmp:TBitmap;
begin
  bmp:= TBitmap.Create;
  try
    bmp.PixelFormat:= pf24bit;
    bmp.Width:= jpg_temp.Width;
    bmp.Height:= jpg_temp.Height;
    bmp.Assign(jpg_temp);

    bmp.Canvas.Brush.Style:=bsClear;
    bmp.Canvas.Pen.Style:= psdot;
    bmp.Canvas.Rectangle(X0,Y0,X1,Y1);
    Image1.Picture.Assign(bmp);
  finally
    bmp.Free;
  end;
end;

procedure Tfrmcropimage.FormDestroy(Sender: TObject);
begin
  inherited;
  jpg_temp.Destroy;
  img.Destroy;
end;

procedure Tfrmcropimage.FormShow(Sender: TObject);
begin
  inherited;
  jpg_temp:= TJPEGImage.Create;
  img:= TMemoryStream.Create;
end;

procedure Tfrmcropimage.Guardar1Click(Sender: TObject);
var bmp:TBitmap;
    jpg_res:TJpegImage;
begin
  inherited;
  bmp:= TBitmap.Create;
  jpg_res:= TJpegImage.Create;

    try
      img.Position:=0;
      bmp.PixelFormat:= pf24bit;
      bmp.Width:=abs(x1-x0);
      bmp.Height:=abs(y1-y0);
      if x0>x1 then x0:= x1;
      if y0>y1 then y0:= y1;
      bmp.Canvas.Draw(-x0,-y0,jpg_temp);
      jpg_res.Assign(bmp);
      jpg_res.SaveToFile('img.jpg');
    finally
      close;
      bmp.Free;
    end;


end;

procedure Tfrmcropimage.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  isMouseDown:= True;
  //X0:= X;
  //Y0:= Y;
end;

procedure Tfrmcropimage.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
  if isMouseDown then
  begin
     //X1:=X;
     //Y1:=Y;
     X0:=X;
     Y0:=Y;
     X1:= X0+120;
     Y1:= Y0+120;

     Draw_Res;
  end;
end;

procedure Tfrmcropimage.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  isMouseDown:= False;
end;

procedure Tfrmcropimage.ReducirImagen1Click(Sender: TObject);
begin
  resize_image(250);

end;

procedure Tfrmcropimage.ReducirImagen500x5001Click(Sender: TObject);
begin
  resize_image(500);
end;

procedure Tfrmcropimage.resize_image(escala: Integer);
var
  bmp: TBitmap;
  jpg: TJpegImage;
  scale: Double;
begin

     if jpg_temp.Height > jpg_temp.Width then
      scale := escala / jpg_temp.Height
     else
      scale := escala / jpg_temp.Width;
      bmp := TBitmap.Create;
     try
        {Create thumbnail bitmap, keep pictures aspect ratio}
        bmp.Width := Round(jpg_temp.Width * scale);
        bmp.Height:= Round(jpg_temp.Height * scale);
        bmp.Canvas.StretchDraw(bmp.Canvas.Cliprect, jpg_temp);
        {Draw thumbnail as control}
        Self.Canvas.Draw(100, 10, bmp);
        {Convert back to JPEG and save to file}
        jpg_temp.Assign(bmp);
        Image1.Picture.Assign(bmp);
      finally
        bmp.free;
      end;
    
end;

end.
