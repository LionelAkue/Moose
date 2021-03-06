Class {
	#name : #RTExampleTestCase,
	#superclass : #GtExampleTestCase,
	#category : #'Roassal2GT-Tests-Examples'
}

{ #category : #accessing }
RTExampleTestCase >> defaultTimeLimit [
	^ 800 seconds
]

{ #category : #configuration }
RTExampleTestCase >> packageNames [
	^ { 'Roassal2' . 'Roassal2GT' }
]

{ #category : #tests }
RTExampleTestCase >> testExamples [
	" default testcase "
	self timeLimit: 300 seconds.
	self runExampleContainers: (self packages: self packageNames)
]
