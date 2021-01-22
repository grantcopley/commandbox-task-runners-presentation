component {

    function run() {
        error( message = "This is an error", exitCode = 2 );
        return 1; // fail
        return 0; // success
    }

}
