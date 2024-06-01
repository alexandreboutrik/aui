with Ada.Text_IO;               use Ada.Text_IO;
with Ada.Integer_Text_IO;       use Ada.Integer_Text_IO;
with Ada.Characters.Latin_1;    use Ada.Characters.Latin_1;

package body Screen is

    procedure Move_To (X: Natural; Y: Natural) is
    begin
        Put(ESC & "[");
        Put(X, Width => 0);
        Put(";");
        Put(Y, Width => 0);
        Put("H");
    end;

    procedure Set_Color (Color: Colors; Attribute: Attributes) is
    begin
        Put(ESC & "[31;");
        Put(Colors'Pos(Color), Width => 0);
        Put(";");
        Put(Attributes'Pos(Attribute), Width => 0);
        Put("m");
    end;

    procedure Set_Color (Color: Colors) is
    begin
        Put(ESC & "[31;");
        Put(Colors'Pos(Color), Width => 0);
        Put("m");
    end;

    procedure Put_Colored (X: Natural; Y: Natural; Color: Colors;
        Attribute: Attributes; Text: String) is
    begin
        Move_To(X, Y);
        Set_Color(Color, Attribute);
        Put(Text);
        Put(ESC & "[0m");
    end;

    procedure Put_Colored
        (Color: Colors; Attribute: Attributes; Text: String) is
    begin
        Set_Color(Color, Attribute);
        Put(Text);
        Put(ESC & "[0m");
    end;

    procedure Put_Colored (X: Natural; Y: Natural; Color: Colors;
        Text: String) is
    begin
        Move_To(X, Y);
        Set_Color(Color);
        Put(Text);
        Put(ESC & "[0m");
    end;

    procedure Put_Colored (Color: Colors; Text: String) is
    begin
        Set_Color(Color);
        Put(Text);
        Put(ESC & "[0m");
    end;

    procedure Put (X: Natural; Y: Natural; Text: String) is
    begin
        Move_To(X, Y);
        Put(Text);
    end;

    procedure Cursor_Forward is
    begin Put(ESC & "[1C"); end;

    procedure Show_Cursor is
    begin Put(ESC & "[?25h"); end;

    procedure Hide_Cursor is
    begin Put(ESC & "[?25l"); end;

    procedure Carriage_Return is
    begin
        Put(ESC & CR);
        -- Move the cursor to the first column
        Put(ESC & "[1G");
    end;

    procedure Clear_Screen is
    begin
        Put(ESC & "[2J" & ESC & "[H");
    end;

    procedure Init_Screen is
    begin Clear_Screen; end;

    procedure Shutdown is
    begin
        Clear_Screen;
        Show_Cursor;
    end;

begin
    null;
end Screen;
