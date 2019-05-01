let project = new Project('Move To Location');
project.addLibrary('box2d');
project.addAssets('Assets/**');
project.addShaders('Shaders/**');
project.addSources('Sources');
resolve(project);
