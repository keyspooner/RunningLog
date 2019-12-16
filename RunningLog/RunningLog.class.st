Class {
	#name : #RunningLog,
	#superclass : #Object,
	#instVars : [
		'title',
		'runs'
	],
	#classVars : [
		'Default'
	],
	#category : #'RunningLog-Model'
}

{ #category : #accessing }
RunningLog class >> default [ 
	^ Default ifNil: [ Default := self new ]
]

{ #category : #initialization }
RunningLog class >> reset [ 
	Default := nil
]

{ #category : #initialization }
RunningLog >> add: aRun [
	self runs add: aRun
]

{ #category : #initialization }
RunningLog >> initialize [
	self runs: OrderedCollection new
]

{ #category : #initialization }
RunningLog >> remove: aRun [
	^ self runs remove: aRun
]

{ #category : #accessing }
RunningLog >> runs [
	^ runs
]

{ #category : #accessing }
RunningLog >> runs: anObject [
	runs := anObject
]

{ #category : #accessing }
RunningLog >> title [
	^ title
]

{ #category : #accessing }
RunningLog >> title: anObject [
	title := anObject
]
