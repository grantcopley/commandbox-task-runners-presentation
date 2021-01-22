component {

    function run() {
        if ( fileExists( "newTask.cfc" ) ) {
            fileDelete( "newTask.cfc" );
        }

        print.greenLine( "Complete!" );
    }

}
