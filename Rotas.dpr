program Rotas;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {Form1},
  uDistanceMatrix in 'uDistanceMatrix.pas',
  uDistanceMatrixRow in 'uDistanceMatrixRow.pas',
  uDistanceMatrixElement in 'uDistanceMatrixElement.pas',
  EDistanceMatrixElementStatus in 'EDistanceMatrixElementStatus.pas',
  uDistance in 'uDistance.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
