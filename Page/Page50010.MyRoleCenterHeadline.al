page 50010 "MyRoleCenterHeadline"
{
    PageType = HeadlinePart;
    layout
    {
        area(Content)
        {
            field(Headline1; text001)
            {
                ApplicationArea = All;
            }
            field(Headline2; text002)
            {
                ApplicationArea = All;
                trigger OnDrillDown()
                var
                    DrillDownURL: Label 'http://www.demiliani.com';
                begin
                    Hyperlink(DrillDownURL);
                end;
            }
            field(Headline3; text003)
            {
                ApplicationArea = All;
            }
            field(Headline4; text004)
            {
                ApplicationArea = All;
                //Determines visibility while the page is open
                Visible = showHeadline4;
            }
        }
    }
    var
        text001: Label 'This is Headline 1';
        text002: Label 'This is Headline 2 (Click for Details)';
        text003: Label 'This is Headline 3';
        text004: Label 'This is Headline 4';
        showHeadline4: Boolean;

    trigger OnOpenPage()
    var
        myInt: Integer;
    begin
        showHeadline4 := true;
    end;
}