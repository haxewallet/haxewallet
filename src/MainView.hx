package ;

import haxe.ui.containers.windows.Window;
import haxe.ui.core.Screen;
import haxe.ui.events.MouseEvent;
import haxe.ui.containers.windows.WindowManager;
import haxe.ui.containers.VBox;
import MainWindow;


@:build(haxe.ui.ComponentBuilder.build("assets/main-view.xml"))
class MainView extends View {
    public function new() {
        super();
        // normally will default to "Screen" but lets change that to our container
        WindowManager.instance.container = windowContainer;
        onOpen();
    }

    private function onOpen() {
        var window = new MainWindow();
  	    if(isMobile())window.contentPane.addComponent(new MobileView());
     	else window.contentPane.addComponent(new DesktopView());
        WindowManager.instance.openMaximized = true;
        WindowManager.instance.addWindow(window);
    }

    private override function onHidden() {
        WindowManager.instance.reset();
    }

    private function isMobile() {
       return min(Screen.instance.actualHeight, Screen.instance.actualWidth) < 801;
    }

    private function min(a:Float,b:Float) {
        if(a<b)return a; else return b;
    }
    
    /*@:bind(button2, MouseEvent.CLICK)
    private function onMyButton(e:MouseEvent) {
        button2.text = "Thanks!";
    }*/
}
