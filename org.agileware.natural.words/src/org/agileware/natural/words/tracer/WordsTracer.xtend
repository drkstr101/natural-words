package org.agileware.natural.words.tracer

import org.agileware.natural.words.words.WordsModel
import org.agileware.natural.words.words.Paragraph
import org.agileware.natural.words.words.Text
import org.agileware.natural.words.words.Section

class WordsTracer {
	def dispatch void trace(WordsModel model) {
		if (model === null) {
			println("*** PARSER FAILED ***")
			return
		}
		
		println("*** MODEL ERRORS ***")
		if (!model.eResource.errors.isEmpty()) {
			for (e : model.eResource.errors) {
				println(e)
			}
		}

		println(model)
		for (s : model.sections) {
			s.trace()
		}
	}

	def dispatch void trace(Section model) {
		println(model)
	}

	def dispatch void trace(Paragraph model) {
		println(model)
		model.text.trace()
	}

	def dispatch void trace(Text model) {
		println(model)
	}
}
