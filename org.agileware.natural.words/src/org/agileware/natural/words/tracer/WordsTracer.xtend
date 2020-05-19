package org.agileware.natural.words.tracer

import java.util.stream.Collectors
import org.agileware.natural.words.words.Document
import org.agileware.natural.words.words.Paragraph
import org.agileware.natural.words.words.Word
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
		println('----------------')
		for (line : model.lines) {
			println(line.words.stream()
					.map([Word w | w.value])
					.collect(Collectors.joining(" ")))
		}
		println('----------------')
	}
}
