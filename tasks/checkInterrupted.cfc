component {

    function run() {
        if ( confirm( "Are you ready to enter an endless loop?" ) ) {
            while ( true ) {
                print.greenText( "." ).toConsole();
                checkInterrupted();
            }
        }
    }

}
