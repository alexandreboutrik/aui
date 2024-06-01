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

    --- TTY test


    ---
    Get_Immediate(Input);

    Put_Line(Input'Image);

    Put_Colored(RED, BOLD, "Red Text");

    delay 2.0;

    Carriage_Return;

    Put_Line("Now its White");

    Put_Line("Next Line");

    delay 2.0;

    Clear_Screen;

    Move_To(15, 20);
    Put_Line("Starting at (15, 20)");

    delay 2.0;

end Test;
