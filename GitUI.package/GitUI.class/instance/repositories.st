as yet unclassified
repositories
	^ super repositories select: [ :r | r isKindOf: MCFileTreeGitRepository ]