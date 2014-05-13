baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'Project13-Core';
				package: 'Project13-Tests' with: [spec requires: #('default')];
				package: 'Designer-Core';
				package: 'Designer-Support';
				package: 'Designer-Templates';
				package: 'Designer-Tests'.
			spec
				group: 'default' with: #('Project13-Core');
				group: 'Tests' with: #('Project13-Tests');
				group: 'Designer' with: #('Designer-Core');
				group: 'TravisCI' with: #('Tests') 
				]