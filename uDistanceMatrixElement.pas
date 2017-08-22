unit uDistanceMatrixElement;

interface
uses
  EDistanceMatrixElementStatus,
  uDistance;

type
  TDistanceMatrixElement = class
  protected
    Fstatus: string;
    Fduration: TDistance;
    FdurationInTraffic: integer;
    Fdistance: TDistance;
    Ffare: currency;
  public
    property status: string read Fstatus write Fstatus;
    property duration: TDistance read Fduration write Fduration;
    property durationInTraffic: integer read FdurationInTraffic write FdurationInTraffic;
    property distance: TDistance read Fdistance write Fdistance;
    property fare: currency read Ffare write Ffare;
  end;

implementation

end.
