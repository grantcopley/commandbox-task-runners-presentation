component {

    function run() depends="target1" {
        print.line( "Called run()" );
    }

    function target1() depends="target2" {
        print.line( "Called target1()" );
    }

    function target2() {
        print.line( "Called target2()" );
    }
}
