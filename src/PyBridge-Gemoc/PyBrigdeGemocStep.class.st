Class {
	#name : #PyBrigdeGemocStep,
	#superclass : #Object,
	#instVars : [
		'step',
		'substeps'
	],
	#category : #'PyBridge-Gemoc'
}

{ #category : #'instance creation' }
PyBrigdeGemocStep class >> on: aPyBridgeObject [

	^ self new
		  step: aPyBridgeObject;
		  yourself
]

{ #category : #API }
PyBrigdeGemocStep >> isActionNamed: aString [

	^ step mseoccurrence mse actionReference name literalValue = aString
]

{ #category : #API }
PyBrigdeGemocStep >> parent [

	| container |
	container := step eContainer.
	container = step eRoot ifTrue: [ ^ container ].
	^ PyBrigdeGemocStep on: container
]

{ #category : #printing }
PyBrigdeGemocStep >> printOn: str [
	str << (step eClass name) printString
]

{ #category : #printing }
PyBrigdeGemocStep >> printString [
	^step eClass name printString
]

{ #category : #API }
PyBrigdeGemocStep >> startingStateValues [

	^ step startingState values
]

{ #category : #accessing }
PyBrigdeGemocStep >> step [

	^ step
]

{ #category : #accessing }
PyBrigdeGemocStep >> step: anObject [

	step := anObject.
	self substeps:
		([ step subSteps asNativeList collect: [ :s | self class on: s ] ]
			 on: Error
			 do: [ OrderedCollection new ])
]

{ #category : #API }
PyBrigdeGemocStep >> subject [

	^ step mseoccurrence mse callerReference
]

{ #category : #accessing }
PyBrigdeGemocStep >> substeps [

	^ substeps
]

{ #category : #accessing }
PyBrigdeGemocStep >> substeps: anObject [

	substeps := anObject
]
