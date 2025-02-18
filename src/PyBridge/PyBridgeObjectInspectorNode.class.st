Class {
	#name : 'PyBridgeObjectInspectorNode',
	#superclass : 'StInspectorNode',
	#instVars : [
		'key',
		'value'
	],
	#category : 'PyBridge-core',
	#package : 'PyBridge',
	#tag : 'core'
}

{ #category : 'accessing' }
PyBridgeObjectInspectorNode >> key [
	"Answer the key of this object variable (slot, indexed attribute, computed value)."
	^ key
]

{ #category : 'accessing' }
PyBridgeObjectInspectorNode >> key: anObject [

	key := anObject
]

{ #category : 'accessing' }
PyBridgeObjectInspectorNode >> rawValue [
	"Answer the object value of this object variable (slot, indexed attribute, computed value)."
	^ value
]

{ #category : 'spec - inspections' }
PyBridgeObjectInspectorNode >> treeInspectionChildren [
	^value treeInspectionChildren
]

{ #category : 'accessing' }
PyBridgeObjectInspectorNode >> value: anObject [

	value := anObject
]
