package ;

import haxe.ui.HaxeUIApp;

class Main {
    public static function main() {
        var app = new HaxeUIApp();
        app.ready(function() {
    	    var view: MainView = new MainView();
            app.addComponent(view);
            app.start();
        });
    }
}
