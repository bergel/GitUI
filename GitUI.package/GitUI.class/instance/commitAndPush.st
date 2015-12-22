as yet unclassified
commitAndPush
	"Commit and push the selected package in the selected git repository"
	[ self basicSaveVersionIn: self repository. self gitPush ] fork
	