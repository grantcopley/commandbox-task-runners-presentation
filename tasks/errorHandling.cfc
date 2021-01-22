component {
    function run() {

        if ( confirm( "Should I return an error?" ) ) {
            return 1;
            // error( message="Opps!", exitCode=2 );
        }

        return 0; // success
    }
}