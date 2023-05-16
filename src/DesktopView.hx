package ;

import haxe.ui.containers.VBox;
import haxe.ui.events.MouseEvent;

@:build(haxe.ui.ComponentBuilder.build("assets/desktop-view.xml"))
class DesktopView extends View {
    public function new() {
        super();
	/*
        button1.onClick = function(e) {
            button1.text = "Thanks!";
        }
	*/
    }
    
    /*
    @:bind(button2, MouseEvent.CLICK)
    private function onMyButton(e:MouseEvent) {
        button2.text = "Thanks!";
    }*/
}

