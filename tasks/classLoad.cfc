component {

    function run() {
        classLoad( fileSystemUtil.resolvepath( "./classes" ) );
        // classLoad( fileSystemUtil.resolvepath( "./classes/taskrunner/SaySomething.class" ) );
        // classLoad( fileSystemUtil.resolvepath( "./lib/SaySomething.jar" ) );

        var saySomething = createObject( "java", "taskrunner.SaySomething" );

        print.text( "SaySomething class says: " )
        print.blueText( saySomething.say() );
    }

}
