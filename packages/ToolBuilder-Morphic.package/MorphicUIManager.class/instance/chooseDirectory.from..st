ui requests
chooseDirectory: label from: dir
	"Let the user choose a directory"
	^FileList2 modalFolderSelector: dir