package org.agileware.natural.words.tracer

import org.agileware.natural.words.words.Paragraph
import org.agileware.natural.words.words.TextLine
import org.agileware.natural.words.words.WordsModel

class WordsTracer {
	def dispatch void trace(WordsModel model) {
		if (model === null) {
			println("*** PARSER FAILED ***")
			return
		}
		
		if (!model.eResource.errors.isEmpty()) {
			println("*** MODEL ERRORS ***")
			for (e : model.eResource.errors) {
				println(e)
			}
		}
		
		for(s : model.sections) {
			s.trace()
		}
	}

	def dispatch void trace(Paragraph model) {
		println(model)
		for(l : model.lines) {
			l.trace()
		}
	}

	def dispatch void trace(TextLine model) {
		println(model)
	}
}
