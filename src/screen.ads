package Screen is

    type Colors is (BLACK, RED, GREEN, YELLOW, BLUE, MAGENTA, CYAN, WHITE);

    type Attributes is (RESET, BOLD, FAINT, ITALIC, UNDERLINE);

    -- ESC[n;mH - Move cursor to (n, m)
    procedure Move_To (X: Natural; Y: Natural);

    -- ESC[31;$m - color
    procedure Set_Color (Color: Colors; Attribute: Attributes);
    procedure Set_Color (Color: Colors);

    -- ESC[31;$m - color
    procedure Put_Colored (X: Natural; Y: Natural;
        Color: Colors;
        Attribute: Attributes;
        Text: String);

    procedure Put_Colored (Color: Colors;
        Attribute: Attributes;
        Text: String);

    procedure Put_Colored (X: Natural; Y: Natural;
        Color: Colors;
        Text: String);

    procedure Put_Colored (Color: Colors; Text: String);

    procedure Put (X: Natural; Y: Natural; Text: String);

    -- ESC[1C - Move the cursor forward
    procedure Cursor_Forward with inline;

    -- ESC[?25h - Show or hide cursor
    procedure Show_Cursor with inline;
    procedure Hide_Cursor with inline;

    -- ESC[CR
    procedure Carriage_Return;

    -- ESC[2J -- Erase entire screen
    -- ESC[H  -- Move cursor to home position (0, 0)
    procedure Clear_Screen;

    procedure Init_Screen with inline;
    procedure Shutdown with inline;

end Screen;
