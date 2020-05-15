package org.agileware.natural.words.tracer

import org.agileware.natural.words.words.Document
import org.agileware.natural.words.words.Paragraph
import org.agileware.natural.words.words.StartLiteral
import org.agileware.natural.words.words.Text
import org.agileware.natural.words.words.WordsModel

class WordsTracer {
	def dispatch void trace(WordsModel model) {
		println(model)
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

		model.document.trace()
	}

	def dispatch void trace(Document model) {
		println(model)
		for (s : model.sections) {
			s.trace()
		}
	}

	def dispatch void trace(Paragraph model) {
		println(model)

		model.first.trace()
		for (t : model.rest) {
			t.trace()
		}
	}

	def dispatch void trace(StartLiteral model) {
		println(model)
	}

	def dispatch void trace(Text model) {
		println(model)
	}
}
