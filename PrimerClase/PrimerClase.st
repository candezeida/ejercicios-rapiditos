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

!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'CZ 10/5/2020 02:38:27'!
contestar
	"A partir del mensaje recordado, el Guardia de Skyrim responde con una determinada frase dependiendo de la cantidad de conversaciones que ha tenido hasta el momento "
	
	|frasesParaResponder|
	frasesParaResponder := #('Sol�a ser un aventurero como t�, pero un d�a me hirieron en la rodilla con una flecha' 'Vete a lanzar tus preciosos hechizos a otra parte' 'Pss, se quien eres �Salve Sithis!!' 'A t� te van m�s los arcos �eh?. Yo prefiero mi espada...' 'Llevas una buena armadura. Acero, como toda la vida' 'Los he o�do, �aullidos!!, �las historias sobre hombres lobo son ciertas!!' 'T� eres alquimista �no?.�Me har�as una cerveza?' 'Quiz�s yo podr�a ser el sangre de drag�n, aunque no estoy seguro...' 'Eso que llevas da luz.....' 'Eso que te sale de las orejas, �es pelo?').
	^frasesParaResponder at: (cantidadDeVecesQueHablaronConmigo  min: (frasesParaResponder size))! !

!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'CZ 10/5/2020 02:38:32'!
conversar
	"Recuerda el mensaje del personaje que se dirige a el, y responde con una determinada frase"
	
	self recordarQueConversaronConmigo.
	^self contestar! !

!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'CZ 10/5/2020 02:38:59'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	cantidadDeVecesQueHablaronConmigo := 0.! !

!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'CZ 10/5/2020 02:38:37'!
recordarQueConversaronConmigo
	"Actualiza en +1 la cantidad de veces que le ha hablado otro personaje"
	
	cantidadDeVecesQueHablaronConmigo := cantidadDeVecesQueHablaronConmigo + 1.
! !

GuardiaDeSkyrim initializeAfterFileIn!