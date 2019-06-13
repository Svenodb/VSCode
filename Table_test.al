table 50100 Test01
{
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;"TestId"; Code[30])
        {
            
            DataClassification = ToBeClassified;
        }

        field(2; "Description"; Text[250])
        {
            //FieldPropertyName = FieldPropertyValue;
            //DataClassification = ToBeClassified;
            NotBlank = true;
        }

        field(3; "Amount"; Decimal)
        {
            // The "MinValue" property sets the minimum value for the field.
            MinValue = 0;

            // The "MaxValue" property sets the maximum value for the field.
            MaxValue = 100;
            
            // The "DecimalPlaces" property is set to 2 to display with exactly 2 decimals.
            DecimalPlaces = 2;
        }
    }
    
    keys
    {
        key(PK; "TestId")
        {
            Clustered = true;
        }
    }
    
    var
        myInt: Integer;
    
    trigger OnInsert()
    begin
        
    end;
    
    trigger OnModify()
    begin
        
    end;
    
    trigger OnDelete()
    begin
        
    end;
    
    trigger OnRename()
    begin
        
    end;
    
}