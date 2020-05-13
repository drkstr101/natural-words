package org.agileware.natural.words.tests;

import com.google.inject.Inject
import org.eclipse.xtext.GrammarToDot
import org.eclipse.xtext.IGrammarAccess
import org.eclipse.xtext.testing.InjectWith
import org.eclipse.xtext.testing.XtextRunner
import org.junit.Test
import org.junit.runner.RunWith

import static extension org.eclipse.xtext.xbase.lib.InputOutput.*

@RunWith(XtextRunner)
@InjectWith(WordsInjectorProvider)
class WordsVisualizationTest {

	@Inject extension IGrammarAccess
	@Inject extension GrammarToDot

	@Test def void visualizeGrammar(){
		grammar.draw.println
	}
}
