component {

    function run() {
        print.text( "Current folder: ")
                .greenLine( fileSystemUtil.resolvePath( "." ) )
                .text( "Parent folder: ")
                .blueLine( resolvePath( ".." ) );
    }
}