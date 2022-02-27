Class {
	#name : #BPSafariOptions,
	#superclass : #BPMutableCapabilities,
	#category : #'Parasol-SafariDriver'
}

{ #category : #'initialize-release' }
BPSafariOptions >> initialize [ 

	super initialize.
	self setCapability: 'browserName' to: 'safari'
]

{ #category : #private }
BPSafariOptions >> privateSessionCreationJSON [

	^ Dictionary new
		  at: 'capabilities' put: (Dictionary new
				   at: 'firstMatch' put: (Array with: dict copy yourself);
				   yourself);
		  yourself
]
