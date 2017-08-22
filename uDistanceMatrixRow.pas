unit uDistanceMatrixRow;

interface

uses
 uDistanceMatrixElement;

type
  TDistanceMatrixRow = class
  protected
    Felements: TArray<TDistanceMatrixElement>;
  public
    property elements: TArray<TDistanceMatrixElement> read Felements write Felements;
  end;

implementation

end.
