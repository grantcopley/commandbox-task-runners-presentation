component {

    function run() {
        print.line( "getCWD() = " & getCWD() );

        print.line( "shell.getTermWidth() = " & shell.getTermWidth() );

        print.line( "shell.getTermHeight() = " & shell.getTermHeight() );

        if ( confirm( "Do you want to clear the screen?" ) ) {
            shell.clearScreen();
        }
    }

}
