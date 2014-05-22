save/load
pluggableSave

	| generator pluggableContainer |
	
	generator := UiCodeGenerator new
		category: self ui packageNameEdit theText;
		source: container.
		
	"TODO: initialize a pluggablePanelMorph as new container."
	
	pluggableContainer := PluggablePanelSpec new buildWith: ToolBuilder default.
	
	"TODO: set the pluggableContainer's properties to the original containers properties."
	
	"TODO: start code generation"
	
	generator generatePluggableSpecFor: pluggableContainer.