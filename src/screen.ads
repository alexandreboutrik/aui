package Screen is

    type Colors is (BLACK, RED, GREEN, YELLOW, BLUE, MAGENTA, CYAN, WHITE);

    type Attributes is (RESET, BOLD, FAINT, ITALIC, UNDERLINE);

    -- ESC[31;$m - color
    procedure Set_Color (Color: Colors; Attribute: Attributes);
    procedure Set_Color (Color: Colors);

    -- ESC[31;$m - color
    procedure Put_Colored (Color: Colors;
        Attribute: Attributes;
        Text: String);
    procedure Put_Colored (Color: Colors; Text: String);

    -- ESC[n;mH - Move cursor to (n, m)
    procedure Move_To (X: Natural; M: Natural);

    -- ESC[1C - Move the cursor forward
    -- For some reason it is needed for Carriage_Return
    procedure Cursor_Forward;

    -- ESC[CR
    procedure Carriage_Return;

    -- ESC[2J -- Erase entire screen
    -- ESC[H  -- Move cursor to home position (0, 0)
    procedure Clear_Screen;

end Screen;
