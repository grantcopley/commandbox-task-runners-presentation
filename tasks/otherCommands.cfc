component {

    function run() {
        if ( confirm( "Do you want to see the system colors?" ) ) {
            command( "system-colors" ).run();
        }

        if ( confirm( "Do you to see what java version you are running?" ) ) {
            var output = command( "!java -version" ).run( returnOutput = true );
            print.greenLine( output );
        }

        /*
        You can also pipe commands.

        command( "echo" )
            .params( "hello#chr( 10 )#world" )
            .pipe( command( "grep" ).params( "ld" ) )
            .run();
        */
    }

}
