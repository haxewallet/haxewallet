package;

import haxe.ui.containers.windows.Window;

@:xml('
    <window title="HaxeWallet" width="350">
        <window-title width="100%">
        </window-title>
        <grid id="contentPane" width="100%">
        </grid>
        <window-footer width="100%">
            <dropdown width="100">
                <data>
                    <item text="Item 1" />
                    <item text="Item 2" />
                    <item text="Item 3" />
                    <item text="Item 4" />
                    <item text="Item 5" />
                    <item text="Item 6" />
                    <item text="Item 7" />
                    <item text="Item 8" />
                    <item text="Item 9" />
                </data>
            </dropdown>
            <spacer width="100%" />
            <button text="Action1" />
            <button text="Action2" />
        </window-footer>
    </window>
')
class MainWindow extends Window {
    
}
