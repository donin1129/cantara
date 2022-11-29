unit displaySongContent;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, StdCtrls, ExtCtrls, Lyrics, Settings;

type

  { TfrmDisplaySongContent }

  TfrmDisplaySongContent = class(TFrame)
    edtSongName: TEdit;
    lblSongName: TLabel;
    memoCode: TMemo;
    constructor Create(AOwner: TComponent);
    procedure edtSongNameEditingDone(Sender: TObject);
    procedure edtSongNameExit(Sender: TObject);
    procedure edtSongNameMouseLeave(Sender: TObject);
    procedure FrameClick(Sender: TObject);
   //  procedure lblSongNameContentDblClick(Sender: TObject);
  private

  public
    openFile: TRepoFile;
    openFilePath: String;
    procedure loadFile(repofile: TRepoFile);
  end;

implementation

{$R *.lfm}

{ TfrmDisplaySongContent }

constructor TfrmDisplaySongContent.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

procedure TfrmDisplaySongContent.edtSongNameEditingDone(Sender: TObject);
begin
  edtSongName.Visible:=False;
  //lblSongNameContent.Caption:=edtSongName.Text;
end;

procedure TfrmDisplaySongContent.edtSongNameExit(Sender: TObject);
begin
  edtSongName.Visible:=False;
  //lblSongNameContent.Caption:=edtSongName.Text;
end;

procedure TfrmDisplaySongContent.edtSongNameMouseLeave(Sender: TObject);
begin
  edtSongName.Visible:=False;
  //lblSongNameContent.Caption:=edtSongName.Text;
end;

procedure TfrmDisplaySongContent.FrameClick(Sender: TObject);
begin

end;

{procedure TfrmDisplaySongContent.lblSongNameContentDblClick(Sender: TObject);
begin
  edtSongName.Visible := True;
  //edtSongName.Text := lblSongNameContent.Caption;
end;   }

procedure TfrmDisplaySongContent.loadFile(repofile: TRepoFile);
begin
  self.openFile := repofile;
  self.openFilePath := frmSettings.edtRepoPath.Text + PathDelim + repoFile.filePath;
  memoCode.Lines.LoadFromFile(self.openFilePath);
  //lblSongNameContent.Caption:=openFile.Name;
  edtSongName.Text:=openFile.Name;
end;

end.
