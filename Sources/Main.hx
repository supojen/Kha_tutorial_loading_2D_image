package;

import kha.Scheduler;
import kha.System;
import kha.Assets;

class Main {


	public static function main() {
		System.start({title: "Project", width: 1024, height: 768}, function (_) {
			// Just loading everything is ok for small projects
			Assets.loadEverything(function () {
				var Project = new Project();
				// Avoid passing update/render directly,
				// so replacing them via code injection works
				Scheduler.addTimeTask(Project.update, 0, 1 / 60);
				System.notifyOnFrames(Project.render);
			});
		});
	}
}
