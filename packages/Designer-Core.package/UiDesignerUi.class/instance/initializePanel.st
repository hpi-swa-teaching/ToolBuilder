ui - private
initializePanel
	| t1 t2 t3 t4 t5 |
	panel := UiContainer new.
	panel changeTableLayout.
	panel extent: 800 @ 600.
	panel position: 0 @ 0.
	panel hResizing: #spaceFill.
	panel vResizing: #spaceFill.
	panel minWidth: 2.
	panel minHeight: 2.
	panel cellInset: 4.
	panel cellPositioning: #center.
	panel cellSpacing: #none.
	panel layoutInset: 0.
	panel listCentering: #topLeft.
	panel listDirection: #topToBottom.
	panel listSpacing: #none.
	panel maxCellSize: 1073741823.
	panel minCellSize: 0.
	panel wrapCentering: #topLeft.
	panel wrapDirection: #none.
	panel
		frameFractions: (0 @ 0 corner: 1 @ 1).
	panel
		frameOffsets: (0 @ 0 corner: 0 @ 0).
	panel balloonText: nil.
	panel
		balloonColor: (TranslucentColor
				r: 0.91
				g: 0.94
				b: 1
				alpha: 0.945).
	panel
		color: (Color
				r: 0.85
				g: 0.85
				b: 0.85).
	panel borderWidth: 0.
	panel borderStyle2: #simple.
	panel borderColor: Color black.
	panel setProperty: #objectName toValue: 'panel'.
	panel setProperty: #objectDescription toValue: 'This is the user interface layout for the morphic designer.'.
	t1 := UiContainer new.
	t1 changeTableLayout.
	t1 extent: 800 @ 37.
	t1 position: 0 @ 0.
	t1 hResizing: #rigid.
	t1 vResizing: #shrinkWrap.
	t1 minWidth: 2.
	t1 minHeight: 2.
	t1 cellInset: 4.
	t1 cellPositioning: #center.
	t1 cellSpacing: #none.
	t1
		layoutInset: (4 @ 0 corner: 4 @ 0).
	t1 listCentering: #topLeft.
	t1 listDirection: #leftToRight.
	t1 listSpacing: #none.
	t1 maxCellSize: 1073741823.
	t1 minCellSize: 0.
	t1 wrapCentering: #topLeft.
	t1 wrapDirection: #none.
	t1
		frameFractions: (0 @ 0 corner: 1 @ 1).
	t1
		frameOffsets: (0 @ 0 corner: 0 @ 0).
	t1 balloonText: nil.
	t1
		balloonColor: (TranslucentColor
				r: 0.91
				g: 0.94
				b: 1
				alpha: 0.945).
	t1 color: Color transparent.
	t1 borderWidth: 0.
	t1 borderStyle2: #simple.
	t1 borderColor: Color red.
	newBtn := UiToolButton new.
	newBtn changeTableLayout.
	newBtn extent: 28 @ 36.
	newBtn position: 4 @ 0.
	newBtn hResizing: #shrinkWrap.
	newBtn vResizing: #shrinkWrap.
	newBtn minWidth: 2.
	newBtn minHeight: 2.
	newBtn cellInset: 0.
	newBtn cellPositioning: #center.
	newBtn cellSpacing: #none.
	newBtn
		layoutInset: (3 @ 4 corner: 3 @ 0).
	newBtn listCentering: #topLeft.
	newBtn listDirection: #topToBottom.
	newBtn listSpacing: #none.
	newBtn maxCellSize: 1073741823.
	newBtn minCellSize: 0.
	newBtn wrapCentering: #topLeft.
	newBtn wrapDirection: #none.
	newBtn
		frameFractions: (0 @ 0 corner: 1 @ 1).
	newBtn
		frameOffsets: (0 @ 0 corner: 0 @ 0).
	newBtn balloonText: 'Create a new user interface
and close the current one.'.
	newBtn
		balloonColor: (TranslucentColor
				r: 0.91
				g: 0.94
				b: 1
				alpha: 0.945).
	newBtn enabled: true.
	newBtn setProperty: #iconByDesigner toValue: 'UiSilkIcons pageWhiteIcon'.
	newBtn icon: UiSilkIcons pageWhiteIcon.
	newBtn text: 'New'.
	newBtn
		color: (Color
				r: 0.85
				g: 0.85
				b: 0.85).
	newBtn checkable: false.
	newBtn checked: false.
	newBtn autoExclusive: false.
	newBtn autoRaise: true.
	newBtn buttonStyle: #textUnderIcon.
	newBtn setProperty: #objectName toValue: 'newBtn'.
	t1 addChild: newBtn.
	openBtn := UiToolButton new.
	openBtn changeTableLayout.
	openBtn extent: 32 @ 36.
	openBtn position: 38 @ 0.
	openBtn hResizing: #shrinkWrap.
	openBtn vResizing: #shrinkWrap.
	openBtn minWidth: 2.
	openBtn minHeight: 2.
	openBtn cellInset: 0.
	openBtn cellPositioning: #center.
	openBtn cellSpacing: #none.
	openBtn
		layoutInset: (3 @ 4 corner: 3 @ 0).
	openBtn listCentering: #topLeft.
	openBtn listDirection: #topToBottom.
	openBtn listSpacing: #none.
	openBtn maxCellSize: 1073741823.
	openBtn minCellSize: 0.
	openBtn wrapCentering: #topLeft.
	openBtn wrapDirection: #none.
	openBtn
		frameFractions: (0 @ 0 corner: 1 @ 1).
	openBtn
		frameOffsets: (0 @ 0 corner: 0 @ 0).
	openBtn balloonText: 'Open a present user
interface.'.
	openBtn
		balloonColor: (TranslucentColor
				r: 0.91
				g: 0.94
				b: 1
				alpha: 0.945).
	openBtn enabled: true.
	openBtn setProperty: #iconByDesigner toValue: 'UiSilkIcons folderIcon'.
	openBtn icon: UiSilkIcons folderIcon.
	openBtn text: 'Open'.
	openBtn
		color: (Color
				r: 0.85
				g: 0.85
				b: 0.85).
	openBtn checkable: false.
	openBtn checked: false.
	openBtn autoExclusive: false.
	openBtn autoRaise: true.
	openBtn buttonStyle: #textUnderIcon.
	openBtn setProperty: #objectName toValue: 'openBtn'.
	t1 addChild: openBtn.
	saveBtn := UiToolButton new.
	saveBtn changeTableLayout.
	saveBtn extent: 31 @ 36.
	saveBtn position: 76 @ 0.
	saveBtn hResizing: #shrinkWrap.
	saveBtn vResizing: #shrinkWrap.
	saveBtn minWidth: 2.
	saveBtn minHeight: 2.
	saveBtn cellInset: 0.
	saveBtn cellPositioning: #center.
	saveBtn cellSpacing: #none.
	saveBtn
		layoutInset: (3 @ 4 corner: 3 @ 0).
	saveBtn listCentering: #topLeft.
	saveBtn listDirection: #topToBottom.
	saveBtn listSpacing: #none.
	saveBtn maxCellSize: 1073741823.
	saveBtn minCellSize: 0.
	saveBtn wrapCentering: #topLeft.
	saveBtn wrapDirection: #none.
	saveBtn
		frameFractions: (0 @ 0 corner: 1 @ 1).
	saveBtn
		frameOffsets: (0 @ 0 corner: 0 @ 0).
	saveBtn balloonText: 'Save the current user
interfaces in the defined
package.'.
	saveBtn
		balloonColor: (TranslucentColor
				r: 0.91
				g: 0.94
				b: 1
				alpha: 0.945).
	saveBtn enabled: true.
	saveBtn setProperty: #iconByDesigner toValue: 'UiSilkIcons diskIcon'.
	saveBtn icon: UiSilkIcons diskIcon.
	saveBtn text: 'Save'.
	saveBtn
		color: (Color
				r: 0.85
				g: 0.85
				b: 0.85).
	saveBtn checkable: false.
	saveBtn checked: false.
	saveBtn autoExclusive: false.
	saveBtn autoRaise: true.
	saveBtn buttonStyle: #textUnderIcon.
	saveBtn setProperty: #objectName toValue: 'saveBtn'.
	t1 addChild: saveBtn.
	t2 := UiLabel new.
	t2 changeTableLayout.
	t2 extent: 16 @ 16.
	t2 position: 113 @ 11.
	t2 hResizing: #shrinkWrap.
	t2 vResizing: #shrinkWrap.
	t2 minWidth: 2.
	t2 minHeight: 2.
	t2 cellInset: 0.
	t2 cellPositioning: #center.
	t2 cellSpacing: #none.
	t2 layoutInset: 0.
	t2 listCentering: #topLeft.
	t2 listDirection: #leftToRight.
	t2 listSpacing: #none.
	t2 maxCellSize: 1073741823.
	t2 minCellSize: 0.
	t2 wrapCentering: #topLeft.
	t2 wrapDirection: #none.
	t2
		frameFractions: (0 @ 0 corner: 1 @ 1).
	t2
		frameOffsets: (0 @ 0 corner: 0 @ 0).
	t2 balloonText: nil.
	t2
		balloonColor: (TranslucentColor
				r: 0.91
				g: 0.94
				b: 1
				alpha: 0.945).
	t2 text: 'Label'.
	t2 setProperty: #formByDesigner toValue: 'UiSilkIcons packageIcon'.
	t2 form: UiSilkIcons packageIcon.
	t1 addChild: t2.
	packageNameEdit := UiLineEdit new.
	packageNameEdit extent: 140 @ 20.
	packageNameEdit position: 134 @ 9.
	packageNameEdit hResizing: #rigid.
	packageNameEdit vResizing: #rigid.
	packageNameEdit minWidth: 2.
	packageNameEdit minHeight: 2.
	packageNameEdit cellInset: 0.
	packageNameEdit cellPositioning: #center.
	packageNameEdit cellSpacing: #none.
	packageNameEdit layoutInset: 0.
	packageNameEdit listCentering: #topLeft.
	packageNameEdit listDirection: #topToBottom.
	packageNameEdit listSpacing: #none.
	packageNameEdit maxCellSize: 1073741823.
	packageNameEdit minCellSize: 0.
	packageNameEdit wrapCentering: #topLeft.
	packageNameEdit wrapDirection: #none.
	packageNameEdit
		frameFractions: (0 @ 0 corner: 1 @ 1).
	packageNameEdit
		frameOffsets: (0 @ 0 corner: 0 @ 0).
	packageNameEdit balloonText: nil.
	packageNameEdit
		balloonColor: (TranslucentColor
				r: 0.91
				g: 0.94
				b: 1
				alpha: 0.945).
	packageNameEdit widgetResizable: false.
	packageNameEdit horizontalScrollBarPolicy: #alwaysOff.
	packageNameEdit verticalScrollBarPolicy: #alwaysOff.
	packageNameEdit outerBorderWidth: 1.
	packageNameEdit scrollBarThickness: 9.
	packageNameEdit theText: ''.
	packageNameEdit readOnly: false.
	packageNameEdit autoConvert: false.
	packageNameEdit autoAccept: false.
	packageNameEdit acceptOnFocusLost: true.
	packageNameEdit scrollingMode: #none.
	packageNameEdit scrollingLimit: 10.
	packageNameEdit helpText: 'Type target package...'.
	packageNameEdit hideCursor: true.
	packageNameEdit setProperty: #objectName toValue: 'packageNameEdit'.
	t1 addChild: packageNameEdit.
	pluggableSaveButton := UiPushButton new.
	pluggableSaveButton changeTableLayout.
	pluggableSaveButton extent: 70 @ 20.
	pluggableSaveButton position: 280 @ 9.
	pluggableSaveButton hResizing: #shrinkWrap.
	pluggableSaveButton vResizing: #shrinkWrap.
	pluggableSaveButton minWidth: 2.
	pluggableSaveButton minHeight: 2.
	pluggableSaveButton cellInset: 4.
	pluggableSaveButton cellPositioning: #center.
	pluggableSaveButton cellSpacing: #none.
	pluggableSaveButton
		layoutInset: (2 @ 0 corner: 2 @ 0).
	pluggableSaveButton listCentering: #topLeft.
	pluggableSaveButton listDirection: #leftToRight.
	pluggableSaveButton listSpacing: #none.
	pluggableSaveButton maxCellSize: 1073741823.
	pluggableSaveButton minCellSize: 0.
	pluggableSaveButton wrapCentering: #topLeft.
	pluggableSaveButton wrapDirection: #none.
	pluggableSaveButton
		frameFractions: (0 @ 0 corner: 1 @ 1).
	pluggableSaveButton
		frameOffsets: (0 @ 0 corner: 0 @ 0).
	pluggableSaveButton balloonText: nil.
	pluggableSaveButton
		balloonColor: (TranslucentColor
				r: 0.92
				g: 0.92
				b: 0.706
				alpha: 0.749).
	pluggableSaveButton enabled: true.
	pluggableSaveButton setProperty: #iconByDesigner toValue: 'nil'.
	pluggableSaveButton icon: nil.
	pluggableSaveButton text: 'pluggSave'.
	pluggableSaveButton
		color: (Color
				r: 0.8
				g: 0.8
				b: 0.8).
	pluggableSaveButton checkable: false.
	pluggableSaveButton checked: false.
	pluggableSaveButton autoExclusive: false.
	pluggableSaveButton setProperty: #objectName toValue: 'pluggableSaveButton'.
	t1 addChild: pluggableSaveButton.
	panel addChild: t1.
	prop := UiContainer new.
	prop changeProportionalLayout.
	prop extent: 800 @ 558.
	prop position: 0 @ 42.
	prop hResizing: #spaceFill.
	prop vResizing: #spaceFill.
	prop minWidth: 2.
	prop minHeight: 2.
	prop cellInset: 10.
	prop cellPositioning: #center.
	prop cellSpacing: #none.
	prop
		layoutInset: (0 @ 0 corner: 0 @ 5).
	prop listCentering: #topLeft.
	prop listDirection: #topToBottom.
	prop listSpacing: #none.
	prop maxCellSize: 1073741823.
	prop minCellSize: 0.
	prop wrapCentering: #topLeft.
	prop wrapDirection: #none.
	prop
		frameFractions: (0 @ 0 corner: 1 @ 1).
	prop
		frameOffsets: (0 @ 0 corner: 0 @ 0).
	prop balloonText: nil.
	prop
		balloonColor: (TranslucentColor
				r: 0.91
				g: 0.94
				b: 1
				alpha: 0.945).
	prop color: Color transparent.
	prop borderWidth: 0.
	prop borderStyle2: #simple.
	prop borderColor: Color black.
	prop setProperty: #objectName toValue: 'prop'.
	propertyScroller := UiPropertyTableScroller new.
	propertyScroller extent: 200 @ 553.
	propertyScroller position: 600 @ 42.
	propertyScroller hResizing: #spaceFill.
	propertyScroller vResizing: #spaceFill.
	propertyScroller minWidth: 2.
	propertyScroller minHeight: 2.
	propertyScroller cellInset: 0.
	propertyScroller cellPositioning: #center.
	propertyScroller cellSpacing: #none.
	propertyScroller layoutInset: 0.
	propertyScroller listCentering: #topLeft.
	propertyScroller listDirection: #topToBottom.
	propertyScroller listSpacing: #none.
	propertyScroller maxCellSize: 1073741823.
	propertyScroller minCellSize: 0.
	propertyScroller wrapCentering: #topLeft.
	propertyScroller wrapDirection: #none.
	propertyScroller
		frameFractions: (0.75 @ 0 corner: 1 @ 1).
	propertyScroller
		frameOffsets: (0 @ 0 corner: 0 @ 0).
	propertyScroller balloonText: nil.
	propertyScroller
		balloonColor: (TranslucentColor
				r: 0.91
				g: 0.94
				b: 1
				alpha: 0.945).
	propertyScroller widgetResizable: false.
	propertyScroller horizontalScrollBarPolicy: #alwaysOff.
	propertyScroller verticalScrollBarPolicy: #asNeeded.
	propertyScroller outerBorderWidth: 0.
	propertyScroller scrollBarThickness: 9.
	propertyScroller setProperty: #objectName toValue: 'propertyScroller'.
	prop addChild: propertyScroller.
	t3 := UiContainer new.
	t3 changeTableLayout.
	t3 extent: 184 @ 553.
	t3 position: 0 @ 42.
	t3 hResizing: #spaceFill.
	t3 vResizing: #spaceFill.
	t3 minWidth: 2.
	t3 minHeight: 2.
	t3 cellInset: 4.
	t3 cellPositioning: #center.
	t3 cellSpacing: #none.
	t3 layoutInset: 0.
	t3 listCentering: #topLeft.
	t3 listDirection: #topToBottom.
	t3 listSpacing: #none.
	t3 maxCellSize: 1073741823.
	t3 minCellSize: 0.
	t3 wrapCentering: #topLeft.
	t3 wrapDirection: #none.
	t3
		frameFractions: (0 @ 0 corner: 0.23 @ 1).
	t3
		frameOffsets: (0 @ 0 corner: 0 @ 0).
	t3 balloonText: nil.
	t3
		balloonColor: (TranslucentColor
				r: 0.91
				g: 0.94
				b: 1
				alpha: 0.945).
	t3 color: Color transparent.
	t3 borderWidth: 0.
	t3 borderStyle2: #simple.
	t3 borderColor: Color black.
	widgetList := UiTreeView new.
	widgetList extent: 184 @ 527.
	widgetList position: 0 @ 42.
	widgetList hResizing: #spaceFill.
	widgetList vResizing: #spaceFill.
	widgetList minWidth: 2.
	widgetList minHeight: 2.
	widgetList cellInset: 0.
	widgetList cellPositioning: #center.
	widgetList cellSpacing: #none.
	widgetList layoutInset: 0.
	widgetList listCentering: #topLeft.
	widgetList listDirection: #topToBottom.
	widgetList listSpacing: #none.
	widgetList maxCellSize: 1073741823.
	widgetList minCellSize: 0.
	widgetList wrapCentering: #topLeft.
	widgetList wrapDirection: #none.
	widgetList
		frameFractions: (0 @ 0 corner: 1 @ 1).
	widgetList
		frameOffsets: (0 @ 0 corner: 0 @ 0).
	widgetList balloonText: nil.
	widgetList
		balloonColor: (TranslucentColor
				r: 0.91
				g: 0.94
				b: 1
				alpha: 0.945).
	widgetList widgetResizable: false.
	widgetList horizontalScrollBarPolicy: #asNeeded.
	widgetList verticalScrollBarPolicy: #asNeeded.
	widgetList outerBorderWidth: 0.
	widgetList scrollBarThickness: 9.
	widgetList modelClass: UiWidgetModel.
	widgetList horizontalHeaderVisible: false.
	widgetList verticalHeaderVisible: false.
	widgetList selectionBehavior: #selectRows.
	widgetList selectionMode: UiViewSingleSelection.
	widgetList setProperty: #objectName toValue: 'widgetList'.
	t3 addChild: widgetList.
	t4 := UiContainer new.
	t4 changeTableLayout.
	t4 extent: 184 @ 22.
	t4 position: 0 @ 573.
	t4 hResizing: #spaceFill.
	t4 vResizing: #shrinkWrap.
	t4 minWidth: 2.
	t4 minHeight: 2.
	t4 cellInset: 4.
	t4 cellPositioning: #center.
	t4 cellSpacing: #none.
	t4
		layoutInset: (0 @ 0 corner: 5 @ 0).
	t4 listCentering: #topLeft.
	t4 listDirection: #leftToRight.
	t4 listSpacing: #none.
	t4 maxCellSize: 1073741823.
	t4 minCellSize: 0.
	t4 wrapCentering: #topLeft.
	t4 wrapDirection: #none.
	t4
		frameFractions: (0 @ 0 corner: 1 @ 1).
	t4
		frameOffsets: (0 @ 0 corner: 0 @ 0).
	t4 balloonText: nil.
	t4
		balloonColor: (TranslucentColor
				r: 0.91
				g: 0.94
				b: 1
				alpha: 0.945).
	t4 color: Color transparent.
	t4 borderWidth: 0.
	t4 borderStyle2: #simple.
	t4 borderColor: Color black.
	t5 := UiLabel new.
	t5 changeTableLayout.
	t5 extent: 16 @ 16.
	t5 position: 0 @ 576.
	t5 hResizing: #shrinkWrap.
	t5 vResizing: #shrinkWrap.
	t5 minWidth: 2.
	t5 minHeight: 2.
	t5 cellInset: 0.
	t5 cellPositioning: #center.
	t5 cellSpacing: #none.
	t5 layoutInset: 0.
	t5 listCentering: #topLeft.
	t5 listDirection: #leftToRight.
	t5 listSpacing: #none.
	t5 maxCellSize: 1073741823.
	t5 minCellSize: 0.
	t5 wrapCentering: #topLeft.
	t5 wrapDirection: #none.
	t5
		frameFractions: (0 @ 0 corner: 1 @ 1).
	t5
		frameOffsets: (0 @ 0 corner: 0 @ 0).
	t5 balloonText: nil.
	t5
		balloonColor: (TranslucentColor
				r: 0.91
				g: 0.94
				b: 1
				alpha: 0.945).
	t5 text: 'Label'.
	t5 setProperty: #formByDesigner toValue: 'UiFugueIcons magnifierMediumIcon'.
	t5 form: UiFugueIcons magnifierMediumIcon.
	t4 addChild: t5.
	filterEdit := UiLineEdit new.
	filterEdit extent: 159 @ 20.
	filterEdit position: 20 @ 574.
	filterEdit hResizing: #spaceFill.
	filterEdit vResizing: #rigid.
	filterEdit minWidth: 2.
	filterEdit minHeight: 2.
	filterEdit cellInset: 0.
	filterEdit cellPositioning: #center.
	filterEdit cellSpacing: #none.
	filterEdit layoutInset: 0.
	filterEdit listCentering: #topLeft.
	filterEdit listDirection: #topToBottom.
	filterEdit listSpacing: #none.
	filterEdit maxCellSize: 1073741823.
	filterEdit minCellSize: 0.
	filterEdit wrapCentering: #topLeft.
	filterEdit wrapDirection: #none.
	filterEdit
		frameFractions: (0 @ 0 corner: 1 @ 1).
	filterEdit
		frameOffsets: (0 @ 0 corner: 0 @ 0).
	filterEdit balloonText: nil.
	filterEdit
		balloonColor: (TranslucentColor
				r: 0.91
				g: 0.94
				b: 1
				alpha: 0.945).
	filterEdit widgetResizable: false.
	filterEdit horizontalScrollBarPolicy: #alwaysOff.
	filterEdit verticalScrollBarPolicy: #alwaysOff.
	filterEdit outerBorderWidth: 1.
	filterEdit scrollBarThickness: 9.
	filterEdit theText: ''.
	filterEdit readOnly: false.
	filterEdit autoConvert: false.
	filterEdit autoAccept: false.
	filterEdit acceptOnFocusLost: true.
	filterEdit scrollingMode: #none.
	filterEdit scrollingLimit: 10.
	filterEdit helpText: 'Search...'.
	filterEdit hideCursor: true.
	filterEdit setProperty: #objectName toValue: 'filterEdit'.
	t4 addChild: filterEdit.
	t3 addChild: t4.
	prop addChild: t3.
	centralScroller := UiScrollArea new.
	centralScroller extent: 416 @ 553.
	centralScroller position: 184 @ 42.
	centralScroller hResizing: #spaceFill.
	centralScroller vResizing: #spaceFill.
	centralScroller minWidth: 2.
	centralScroller minHeight: 2.
	centralScroller cellInset: 0.
	centralScroller cellPositioning: #center.
	centralScroller cellSpacing: #none.
	centralScroller layoutInset: 0.
	centralScroller listCentering: #topLeft.
	centralScroller listDirection: #topToBottom.
	centralScroller listSpacing: #none.
	centralScroller maxCellSize: 1073741823.
	centralScroller minCellSize: 0.
	centralScroller wrapCentering: #topLeft.
	centralScroller wrapDirection: #none.
	centralScroller
		frameFractions: (0.23 @ 0 corner: 0.75 @ 1).
	centralScroller
		frameOffsets: (0 @ 0 corner: 0 @ 0).
	centralScroller balloonText: nil.
	centralScroller
		balloonColor: (TranslucentColor
				r: 0.91
				g: 0.94
				b: 1
				alpha: 0.945).
	centralScroller widgetResizable: false.
	centralScroller horizontalScrollBarPolicy: #asNeeded.
	centralScroller verticalScrollBarPolicy: #asNeeded.
	centralScroller outerBorderWidth: 0.
	centralScroller scrollBarThickness: 9.
	centralScroller setProperty: #objectName toValue: 'centralScroller'.
	prop addChild: centralScroller.
	panel addChild: prop.
	panel setProperty: #uiClassName toValue: 'UiDesigner'