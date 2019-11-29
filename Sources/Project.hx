package;

import kha.Framebuffer;
import kha.Image;
import kha.Assets;

// Explaination:
//    0. This is an tutorial of loading image!!!
//
//    1. What is FrameBuffer object:
//          A Framebuffer object represents the framebuffer of a Kha.Window, which typically 
//          contains a color, depth and stencil buffer. It is used to query Graphics interfaces
//          for rendering images which are directly visible.


class Project {

    public var image:Image;

    public function new() {
        // Load the image from Assets folder
        image = Assets.images.test;
    }

    public function update():Void {

    }

    public function render(frames:Array<Framebuffer>):Void {
        // The easiest way to draw an 2D images is use Graphics2 API
        // To use it, we need to obtian a reference to a Graphics2 interface

        // ------------------------------------------------------------------------
        // This is object contains the functions for drawing with the Graphics2 API
        var graphic = frames[0].g2;
        // An optional color can be passed to begin to clear the screen
        graphic.begin();
        // Use Graphics2 API draw an image
        graphic.drawImage(image,30,30);
        // Finally call end() before the next call to begin()
        graphic.end();
    }
}