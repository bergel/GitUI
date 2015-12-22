as yet unclassified
gitPush
	self repository
		ifNotNil:
			[ :repos | 
			(MCFileTreeGitRepositoryInspector
				repository: repos
				workingCopy: workingCopy) gitPush ]