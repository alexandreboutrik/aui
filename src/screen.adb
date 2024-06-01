with Ada.Text_IO;               use Ada.Text_IO;
with Ada.Integer_Text_IO;       use Ada.Integer_Text_IO;
with Ada.Characters.Latin_1;    use Ada.Characters.Latin_1;

package body Screen is

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

    procedure Put_Colored
        (Color: Colors; Attribute: Attributes; Text: String) is
    begin
        Set_Color(Color, Attribute);
        Put(Text);
        Put(ESC & "[0m");
    end;

    procedure Put_Colored (Color: Colors; Text: String) is
    begin
        Set_Color(Color);
        Put(Text);
        Put(ESC & "[0m");
    end;

    procedure Move_To (X: Natural; M: Natural) is
    begin
        Put(ESC & "[");
        Put(X, Width => 0);
        Put(";");
        Put(M, Width => 0);
        Put("H");
    end;

    procedure Cursor_Forward is
    begin
        Put(ESC & "[1C");
    end;

    procedure Carriage_Return is
    begin
        Put(ESC & CR);
        Put(ESC & "[1G");
    end;

    procedure Clear_Screen is
    begin
        Put(ESC & "[2J" & ESC & "[H");
    end;

begin
    null;
end Screen;
