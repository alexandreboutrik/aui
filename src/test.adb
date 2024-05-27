----
-- Very simple Text-based User Interface for the Ada language
--  by Alexandre Boutrik
-- Read LICENSE for licensing information
----

-- Ada package
with Ada.Text_IO;               use Ada.Text_IO;
with Ada.Characters.Latin_1;    use Ada.Characters.Latin_1;

-- Local packages
with Screen;                    use Screen;

procedure Test is
    Input : Character;

begin
    Get_Immediate(Input);

    Put_Line(Input'Image);

    Put_Colored(RED, BOLD, "Red Text");

    delay 2.0;

    Put(ESC & CR & ESC & "[1c" & "Now its White" & LF);

    Put("Next Line" & LF);

    delay 2.0;

    Clear_Screen;

end Test;
