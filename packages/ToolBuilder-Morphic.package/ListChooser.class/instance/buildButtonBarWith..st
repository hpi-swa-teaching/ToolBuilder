building
buildButtonBarWith: builder
	| panel button |
	panel := builder pluggablePanelSpec new
		model: self;
		layout: #proportional;
		children: OrderedCollection new.
	button := builder pluggableButtonSpec new.
	button
		model: self; 
		label: 'Accept (s)';
		action: #accept;
		enabled: #canAccept;
		state: #canAccept;
		color: #acceptColor;
		frame: (0.0 @ 0.0 corner: 0.34@1).
	panel children add: button.

	button := builder pluggableButtonSpec new.
	button
		model: self; 
		label: 'Add (a)';
		action: #add;
		enabled: #canAdd;
		frame: (0.36 @ 0.0 corner: 0.63@1).
	panel children add: button.

	button := builder pluggableButtonSpec new.
	button
		model: self; 
		label: 'Cancel (l)';
		action: #cancel;
		color: #cancelColor;
		frame: (0.65 @ 0.0 corner: 1@1).
	panel children add: button.
	
	^ panel