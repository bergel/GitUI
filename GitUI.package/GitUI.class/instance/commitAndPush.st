as yet unclassified
commitAndPush
	[ self basicSaveVersionIn: self repository. self halt. self gitPush ] fork
	