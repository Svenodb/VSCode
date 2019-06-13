// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

pageextension 50100 CustomerListExt extends "Customer List"
{
    trigger OnOpenPage();
    begin
        Message('App published: Hello world');
        if 5 > 4 then
            Message('OK');
    end;
}


page 50101 "Test Card"
{
    PageType = Card;
    SourceTable = Test01;

    // The page will be part of the "Tasks" group of search results.
    UsageCategory = Tasks;
    
    layout
    {
        area(content)
        {
            group(Test01)
            {
                field("Test Id"; TestId)
                {
                    // ApplicationArea sets the application area that 
                    // applies to the page field and action controls. 
                    // Setting the property to All means that the control 
                    // will always appear in the user interface.
                    ApplicationArea = All;
                }

                field(Description;Description)
                {
                    ApplicationArea = All;
                }

                field("Amount";Amount)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    
    actions
    {
        area(processing)
        {
            action(ActionName)
            {
                trigger OnAction()
                begin
                    
                end;
            }
        }
    }
    
    var
        myInt: Integer;
}




page 50102 "Test List"
{
    PageType = List;
    SourceTable = Test01;

    // The page will be part of the "Lists" group of search results.
    UsageCategory = Lists;

    // The "CardPageId" is set to the Test Card previously created.
    // This will allow users to open records from the list in the "Test Card" page.
    CardPageId = "Test Card";
    
    layout
    {
        area(content)
        {
            repeater(Tests)
            {
                field("Test Id"; TestId)
                {
                    ApplicationArea = All;
                    ToolTip = 'Test identification';
                }

                field(Description;Description)
                {
                    ApplicationArea = All;
                }

                field("Amount";Amount)
                {
                    ApplicationArea = All;
                }
            }
        }
        area(factboxes)
        {
            
        }
    }
    
    actions
    {
        area(processing)
        {
            action(ActionName)
            {
                trigger OnAction();
                begin
                    
                end;
            }
        }
    }
}