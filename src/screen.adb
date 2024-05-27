with Ada.Text_IO;               use Ada.Text_IO;
with Ada.Integer_Text_IO;       use Ada.Integer_Text_IO;
with Ada.Characters.Latin_1;    use Ada.Characters.Latin_1;

package body Screen is

    procedure Put_Colored
        (Color: Colors; Attribute: Attributes; Text: String) is
    begin
        Put(ESC & "[31;");
        Put(Colors'Pos(Color), Width => 0);
        Put(";");
        Put(Attributes'Pos(Attribute), Width => 0);
        Put("m");
        Put(Text);
        Put(ESC & "[0m");
    end;

    procedure Cursor_Forward is
    begin
        Put(ESC & "[1C");
    end;

    procedure Carriage_Return is
    begin
        Put(ESC & CR);
        Cursor_Forward;
    end;

    procedure Clear_Screen is
    begin
        Put(ESC & "[2J" & ESC & "[H");
    end;

begin
    null;
end Screen;
