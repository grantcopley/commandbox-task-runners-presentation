component {

    function run() {
        print.line( "called run()" ).toConsole();
        sleep( 5000 );
    }

    function preTask() {
        print.line( "called preTask()" ).toConsole();
    }

    function postTask() {
        print.line( "called postTask()" ).toConsole();
    }

    function aroundTask( string target, struct taskArgs, any invokeUDF ) {
        print.line( "called aroundTask() before #target#" ).toConsole();

        local.result = invokeUDF();

        print.line( "called aroundTask() after #target#" ).toConsole();

        if ( !isNull( local.result ) ) {
            return local.result; // important to return the invokeUDF result
        }
    }

    // ///////////////////
    // Fires with any exit code
    function onComplete() {
        print.line( "called onComplete()" ).toConsole();
    }

    // ///////////////////
    // Fires with successful exit code (0)
    function onSuccess() {
        print.line( "called onSuccess()" ).toConsole();
    }
    
    // ///////////////////
    // Fires with failing exit code
    function onFail() {
        print.line( "called onFail()" ).toConsole();
    }

    // ///////////////////
    // Fires when user cancels
    function onCancel() {
        print.line( "called onCancel()" ).toConsole();
    }

}
