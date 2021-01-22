component {

    function run() {
        appSettings = getApplicationSettings();

        datasources = appSettings.datasources ?: {};

        datasources["taskrunners"] = {
            class           : "org.gjt.mm.mysql.Driver",
            connectionString: "jdbc:mysql://localhost:4000/taskrunners?useUnicode=true&characterEncoding=UTF-8&useLegacyDatetimeCode=true&useSSL=false",
            username        : "root",
            password        : "secret"
        };

        application action="update" datasources=datasources;

        var qry = queryExecute( sql = "select * from movies", options = {datasource: "taskrunners"} );

        qry.each( function( row ) {
            print.line( row ).toConsole();
        } );
    }

}
