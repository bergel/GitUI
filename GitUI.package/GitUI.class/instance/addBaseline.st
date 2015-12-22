as yet unclassified
addBaseline
	| cls2 |
	baselineName := UIManager default request: 'Enter a baseline name'.
	baselineName ifNil: [ ^ self ].
	
	cls := BaselineOf subclass: (#BaselineOf, baselineName) asSymbol
		instanceVariableNames: ''
		classVariableNames: ''
		package: 'BaselineOf', baselineName.
		
	cls compile: 'baseline: spec
      <baseline>

      spec for: #common do: [
        spec
          package: ''Example-Core'';
          package: ''Example-Tests'' with: [
            spec requires: ''Example-Core'' ] ]'.
	(cls >> #baseline:) browse.
	
	"======"
	cls2 := ConfigurationOf subclass: (#ConfigurationOf, baselineName) asSymbol
		instanceVariableNames: ''
		classVariableNames: ''
		package: 'ConfigurationOf', baselineName.
		
	cls2 compile: 'development: spec
	<symbolicVersion: #development>
	spec for: #''pharo5.x'' version: ''0.1'''.
	
	cls2 compile: 'stable: spec
	<symbolicVersion: #stable>
	spec for: #''pharo5.x'' version: ''0.1'''.

	cls2 compile: 'stable: spec
	<symbolicVersion: #stable>
	spec for: #''pharo5.x'' version: ''0.1'''.

	cls2 compile: 'version0_1: spec
	<version: ''0.1''>
	
	spec
		for: #''common''
		do: [ 
			spec
				baseline: ''BaselineName''
					with: [ spec repository: ''github://username/reponame'' ];
				import: ''BaselineName'' ]'.
	(cls2 >> #'version0_1:') browse