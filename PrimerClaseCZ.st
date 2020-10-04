!classDefinition: #AmigaKitty category: 'PrimerClase'!
DenotativeObject subclass: #AmigaKitty
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PrimerClase'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'AmigaKitty class' category: 'PrimerClase'!
AmigaKitty class
	instanceVariableNames: ''!

!AmigaKitty class methodsFor: 'as yet unclassified' stamp: 'CZ 10/4/2020 20:35:14'!
saludoCon: unSaludo

	^unSaludo, ' Zamba'! !


!classDefinition: #GuardiaDeSkyrim category: 'PrimerClase'!
DenotativeObject subclass: #GuardiaDeSkyrim
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PrimerClase'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'GuardiaDeSkyrim class' category: 'PrimerClase'!
GuardiaDeSkyrim class
	instanceVariableNames: 'cantidadDeVecesQueHablaronConmigo'!

!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'CZ 10/4/2020 20:50:10'!
contestar
	"A partir del mensaje recordado, el Guardia de Skyrim responde con una determinada frase dependiendo de la cantidad de conversaciones que ha tenido hasta el momento "
	|frasesParaResponder|
	frasesParaResponder := #('Solía ser un aventurero como tú, pero un día me hirieron en la rodilla con una flecha' 'Vete a lanzar tus preciosos hechizos a otra parte' 'Pss, se quien eres ¡Salve Sithis!!' 'A tí te van más los arcos ¿eh?. Yo prefiero mi espada...' 'Llevas una buena armadura. Acero, como toda la vida' 'Los he oído, ¡aullidos!!, ¡las historias sobre hombres lobo son ciertas!!' 'Tú eres alquimista ¿no?.¿Me harías una cerveza?' 'Quizás yo podría ser el sangre de dragón, aunque no estoy seguro...' 'Eso que llevas da luz.....' 'Eso que te sale de las orejas, ¿es pelo?').
	frasesParaResponder size < cantidadDeVecesQueHablaronConmigo 
		ifTrue: [^frasesParaResponder at: frasesParaResponder size]
		ifFalse: [^frasesParaResponder at: cantidadDeVecesQueHablaronConmigo].
	
	! !

!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'CZ 10/4/2020 20:16:14'!
conversar
	"Recuerda el mensaje del personaje que se dirige a el, y responde con una determinada frase"
	
	self recordarQueConversaronConmigo.
	^self contestar! !

!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'CZ 10/4/2020 20:50:40'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	cantidadDeVecesQueHablaronConmigo := 0.! !

!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'CZ 10/4/2020 20:44:31'!
recordarQueConversaronConmigo
	"Actualiza en +1 la cantidad de veces que le ha hablado otro personaje"
	cantidadDeVecesQueHablaronConmigo := cantidadDeVecesQueHablaronConmigo + 1.
! !

GuardiaDeSkyrim initializeAfterFileIn!