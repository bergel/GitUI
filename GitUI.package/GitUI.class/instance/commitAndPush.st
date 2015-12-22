as yet unclassified
commitAndPush
	self saveVersion.
	
	"Strange I need to do this"
	(Delay forSeconds: 1) wait.
	
	self repository ifNotNil: [ :repos | 
		(MCFileTreeGitRepositoryInspector repository: repos workingCopy: workingCopy) gitPush
		]