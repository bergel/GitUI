as yet unclassified
buttonSpecs
	^ #(#('+Package' #addWorkingCopy 'Add a new package and make it the working copy')
		#('+Baseline' #addBaseline 'Add a base line to the project')
		#('Browse' #browseWorkingCopy 'Browse the working copy of the selected package' #hasWorkingCopy)
		#('Changes' #viewChanges 'View the working copy''s changes relative to the installed version from the repository' #canSave)
	 	#('+Repository' #addRepository 'Add an existing repository to the list of those visible')
		#('Commit&Push' #commitAndPush 'Save the working copy as a new version to the selected repository' #canSave)
		#('Commit' #saveVersion 'Commit (Save in the Monticello jargon) the package in the GIT Repository' #canSave)
		#('Open' #openRepository 'Open a browser on the selected repository' #hasRepository))