unit uDistance;

interface

type
  TDistance = class
    protected
      FText: string;
      FValue: integer;
    public
      property Text: string read FText write FText;
      property Value: integer read FValue write FValue;
  end;

implementation

end.
