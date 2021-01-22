component {

    function run() {
        // cfformat-ignore-start
        job.start( "Starting job" );

            job.addLog( "Sleeping for 3 seconds" );
            sleep( 3000 );
            job.addLog( "Sleeping for another 3 seconds" );
            sleep( 3000 );

            job.start( "Starting nested job" );

                job.addLog( "Sleeping for 3 seconds" );
                sleep( 3000 );
                job.addWarnLog( "Sleeping for another 3 seconds" );
                sleep( 3000 );
                job.addErrorLog( "How much sleep do you need!?" );
                sleep( 5000 );

            job.complete();

        job.complete();
        // cfformat-ignore-end

        print.line( "These days, you always need more sleep." );
    }

}
