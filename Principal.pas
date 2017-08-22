unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Rest.Json,
  REST.Client,
  Web.HTTPApp,
  REST.Types,
  System.JSON,
  IPPeerClient,
  Data.Bind.Components,
  Data.Bind.ObjectScope,
  uDistanceMatrix
  ;

type
  TfrmMain = class(TForm)
    btnConsultar: TButton;
    RESTClient1: TRESTClient;
    RESTRequest: TRESTRequest;
    RESTResponse: TRESTResponse;
    edtOrigem: TEdit;
    edtDestino: TEdit;
    lbldistancia: TLabel;
    lbltempo: TLabel;
    lblValor: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure btnConsultarClick(Sender: TObject);
  private
    { Private declarations }
    FDistanceMatrix: TDistanceMatrix;
    procedure ConsutarGoolge;
    procedure PreecherObj;
    procedure AtualizaTela;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;
const
  API = 'https://maps.googleapis.com/maps/api/distancematrix';
  KEY = 'AIzaSyBPBXe9Z7DIhV1747sFrPXs7zhUkKHt6A8';
  PARAMETOS = 'json?units=imperial&origins=%s&destinations=%s&key=' + KEY;

implementation

{$R *.dfm}

uses
  EDistanceMatrixElementStatus,
  uDistanceMatrixElement,
  uDistanceMatrixRow;

procedure TfrmMain.btnConsultarClick(Sender: TObject);
begin
  ConsutarGoolge();
  PreecherObj();
  AtualizaTela();
end;

procedure TfrmMain.ConsutarGoolge;
begin
  RESTRequest.Resource := Format(PARAMETOS, [edtOrigem.Text, edtDestino.Text]);
  RESTRequest.Execute;
end;

procedure TfrmMain.PreecherObj;
var
  lJSONObject: TJSONObject;
begin
  lJSONObject := RESTRequest.Response.JSONValue as TJSONObject;
  FDistanceMatrix := TJson.JSONToObject<TDistanceMatrix>(lJSONObject);
end;

procedure TfrmMain.AtualizaTela;
var
  lValor: Double;
begin
  lbldistancia.Caption := 'Dist�ncia: ' + FDistanceMatrix.rows[0].elements[0].distance.Text;
  lbltempo.Caption := 'Tempo: ' + FDistanceMatrix.rows[0].elements[0].duration.Text;
  lValor := (FDistanceMatrix.rows[0].elements[0].distance.Value * 0.01) + (FDistanceMatrix.rows[0].elements[0].duration.Value * 0.0001);
  lblValor.Caption := 'R$ ' + FormatFloat('#,##0.00', lValor);
end;

end.