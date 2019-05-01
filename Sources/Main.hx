package;

import js.html.GamepadEvent;
import kha.Assets;
import kha.Framebuffer;
import kha.Scheduler;
import kha.System;

class Main {
	static function update(): Void {

	}

	static function render(frames: Array<Framebuffer>): Void {

	}

	public static function main() {
		System.start({title: "Project", width: 1024, height: 1024}, function (_) {
			// Just loading everything is ok for small projects
			Assets.loadEverything(function () {
				// Avoid passing update/render directly,
				// so replacing them via code injection works
				var game = new Game(1024, 1024);
				Scheduler.addTimeTask(function () { game.update(); }, 0, 1 / 60);
				System.notifyOnFrames(function (frames) { game.draw(frames); });
			});
		});
	}
}
