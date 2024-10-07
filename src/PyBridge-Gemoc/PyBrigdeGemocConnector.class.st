"
API to GEMOC models and meta-models using PyBridge.
"
Class {
	#name : #PyBrigdeGemocConnector,
	#superclass : #Object,
	#instVars : [
		'experiment'
	],
	#category : #'PyBridge-Gemoc'
}

{ #category : #'instance creation' }
PyBrigdeGemocConnector class >> on: aPyBrigdeObject [

	^ self new
		  experiment: aPyBrigdeObject;
		  yourself
]

{ #category : #accessing }
PyBrigdeGemocConnector >> experiment [

	^ experiment
]

{ #category : #accessing }
PyBrigdeGemocConnector >> experiment: anObject [

	experiment := anObject
]

{ #category : #'accessing - gemoc' }
PyBrigdeGemocConnector >> genericTraceMetaModel [

	^experiment gen_trace_mm
]

{ #category : #'accessing - gemoc' }
PyBrigdeGemocConnector >> languageMetaModel [
	self flag: 'The accessor is related to FSM but it should be generic'.
	^experiment k3fm
]

{ #category : #'accessing - gemoc' }
PyBrigdeGemocConnector >> miniJavaHelloWorld [
	
	^experiment resource_minijava_helloworld contents at: 0
]

{ #category : #'accessing - gemoc' }
PyBrigdeGemocConnector >> miniJavaHelloWorldtraces [
	
	^experiment resource_minijava_helloworld contents at: 0
]

{ #category : #'accessing - gemoc' }
PyBrigdeGemocConnector >> mseTraces [
	
	^experiment mse_trace
]

{ #category : #'accessing - gemoc' }
PyBrigdeGemocConnector >> traceMetaModel [

	^experiment trace_mm
]

{ #category : #'accessing - gemoc' }
PyBrigdeGemocConnector >> traces [
	
	^experiment resource_minijava_helloworld contents at: 0
]
