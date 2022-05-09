Class {
	#name : #PyBrigdeGemocTrace,
	#superclass : #Object,
	#instVars : [
		'traces'
	],
	#category : #'PyBridge-Gemoc'
}

{ #category : #'instance creation' }
PyBrigdeGemocTrace class >> on: aPyBridgeObject [

	^ self new
		  traces: aPyBridgeObject;
		  yourself
]

{ #category : #'as yet unclassified' }
PyBrigdeGemocTrace >> allDimensions [
	self shouldBeImplemented.
]

{ #category : #'as yet unclassified' }
PyBrigdeGemocTrace >> allStates [
	^traces states items
]

{ #category : #'accessing - gemoc' }
PyBrigdeGemocTrace >> allSteps [

	^ traces rootStep subSteps asNativeList collect: [ :s | 
		  PyBrigdeGemocStep on: s ]
]

{ #category : #'as yet unclassified' }
PyBrigdeGemocTrace >> executedRules [
	^(traces eResource contents at: 1) orphanOperations items asNativeList
]

{ #category : #accessing }
PyBrigdeGemocTrace >> traces [

	^ traces
]

{ #category : #accessing }
PyBrigdeGemocTrace >> traces: anObject [

	traces := anObject
]
