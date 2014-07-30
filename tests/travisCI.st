| gitPath gitCache |
Transcript cr; show: 'travis---->travisCI.st'.

gitCache := 'git_cache'.
gitPath := (Smalltalk at: #'FileDirectory' ifAbsent: [  ])
  ifNil: [ ((Smalltalk at: #'FileSystem') workingDirectory / gitCache) pathString ]
  ifNotNil: [:fileDirectoryClass | (fileDirectoryClass default directoryNamed: gitCache ) fullName].

Metacello new
  baseline: 'Project13';
  repository: 'filetree://', gitPath, '/ToolBuilder/packages';
  get.

Metacello new
  baseline: 'Project13';
  repository: 'filetree://', gitPath, '/ToolBuilder/packages';
  load: 'TravisCI'.

"Run the tests"
TravisCIHarness
  value: #( 'BaselineOfProject13' )
  value: 'TravisCISuccess.txt' 
  value: 'TravisCIFailure.txt'.
