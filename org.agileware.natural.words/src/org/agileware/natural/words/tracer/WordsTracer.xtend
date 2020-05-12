package org.agileware.natural.words.tracer

import org.agileware.natural.words.words.WordsModel
import org.agileware.natural.words.words.Paragraph
import org.agileware.natural.words.words.Text

class WordsTracer {
	def dispatch void trace(WordsModel model) {
		 println("*** TRACING WORDS MODEL ***")
		 println(model)
		 for(e : model.elements) { e.trace() }
	}
	
	def dispatch void trace(Paragraph model) {
		 println(model)
		 model.text.trace()
	}
	
	def dispatch void trace(Text model) {
		 println(model)
	}
}