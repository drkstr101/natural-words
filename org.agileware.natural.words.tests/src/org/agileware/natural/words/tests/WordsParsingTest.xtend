/*
 * generated by Xtext 2.21.0
 */
package org.agileware.natural.words.tests

import com.google.inject.Inject
import org.agileware.natural.words.tracer.WordsTracer
import org.agileware.natural.words.words.WordsModel
import org.eclipse.xtext.testing.InjectWith
import org.eclipse.xtext.testing.extensions.InjectionExtension
import org.eclipse.xtext.testing.util.ParseHelper
import org.junit.jupiter.api.Test
import org.junit.jupiter.api.^extension.ExtendWith

import static org.hamcrest.Matchers.*
import static org.hamcrest.MatcherAssert.*

@ExtendWith(InjectionExtension)
@InjectWith(WordsInjectorProvider)
class WordsParsingTest {

	@Inject
	ParseHelper<WordsModel> parseHelper

	@Inject
	extension WordsTracer

	@Test
	def void singleTextLine() {
		println("*** singleTextLine ***")

		val model = parseHelper.parse('''
			The quick brown fox
		''')

		model.trace()
		assertThat(model.eResource.errors, equalTo(#[]))
		assertThat(model.sections.size(), equalTo(1))
		assertThat(model.sections.get(0).lines.size(), equalTo(1))
	}

	@Test
	def void multipleParagraphs() {
		println("*** multipleParagraphs ***")

		val model = parseHelper.parse('''
			The quick brown fox
			Jumps over the lazy moon
			
			But only on days that end in Y
		''')

		model.trace()
		assertThat(model.eResource.errors, equalTo(#[]))
		assertThat(model.sections.size(), equalTo(1))
	}
}
