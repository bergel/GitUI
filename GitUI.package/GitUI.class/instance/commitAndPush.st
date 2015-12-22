as yet unclassified
commitAndPush
	self saveVersion.
	self repository ifNotNil: [ :repos | 
		(MCFileTreeGitRepositoryInspector repository: repos workingCopy: workingCopy) gitPush
		]