baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'Project13Core';
				package: 'Project13-Tests' with: [spec requires: #('default')].
			spec
				group: 'default' with: #('Project13-Core');
				group: 'Tests' with: #('Project13-Tests');
				group: 'TravisCI' with: #('Tests') 
				]