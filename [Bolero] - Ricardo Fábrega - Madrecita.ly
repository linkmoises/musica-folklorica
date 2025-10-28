#(define output-id "BOL07")
\version "2.24.0"
\header {
	title = "Madrecita"
	subtitle = "Bolero"
	composer = "Ricardo Fábrega (1905 - 1973)"
	tagline = ##f
}

\paper {
	#(set-paper-size "letter")
	top-margin = 20
	left-margin = 20
	right-margin = 20
	bottom-margin = 25
	print-page-number = false
	indent = 0
}

\markup \vspace #2

global = {
	\time 2/2
	\tempo "Andante"
	\key f \minor 
}

melodia = \new Voice \relative c' {
	r2 f8 g aes bes |
	\repeat volta 2 {
		c4. c8 ~ c4. c8 | bes4. aes8 ~ aes4. bes8 |  c2 c2 ~ | c4 r4 f,8 g aes bes | 
		c4. c8 ~ c4. c8 | bes4. aes8 ~ aes4. bes8 | c1 ~ | c4 r4 c8 ees des c | 
		ees4. des8 ~ des4 c | bes4. a8 ~ a4 bes | des2 c ~ | c4 r4 aes8 c bes aes | 
		c4. bes8 ~ bes4 aes | g4. e8 ~ e4 f | c'1 ~ |
	}
	\alternative {
		{ c4 r4 f,8 g aes bes | }
		{ c4 r4 c8 d e f | }
	}
}

acordes = \chordmode {
	r1 | f1:m | bes:m |
}

lirica = \lyricmode {
	En las no ches | 
	
}

\score { %% genera el PDF
<<
	\language "espanol"
	\new ChordNames {
		\set chordChanges = ##t
		\set noChordSymbol = ##f
		\override ChordName.font-size = #-0.9
		\override ChordName.direction = #UP
		\acordes
	}
	\new Staff
		<< \global \melodia >>
	\addlyrics { \lirica }
	\override Lyrics.LyricText.font-size = #-0.5
>>
\layout {}
}

\score { %% genera la muestra MIDI melódica
	\unfoldRepeats { \melodia }
	\midi { \tempo 4 = 85 }
}


\markup {
	\fill-line {
		\hspace #1
		\column {
			\line \smallCaps \bold { Madrecita }
			\hspace #1
			\line { Ya no estás a mi lado, corazón }
			\line { En el alma sólo tengo soledad }
			\line { Y si ya no puedo verte }
			\line { Porque dios me hizo quererte }
			\line { Para hacerme sufrir más... }
			\hspace #1
			\line { Siempre fuiste la razón de mi existir }
		}
		\hspace #2
		\column {
			\line { Es la historia de un amor }
			\line { Como no hay otro igual }
			\line { Que me hizo comprender }
			\line { Todo el bien todo el mal }
			\line { Que le dio luz a mi vida }
			\line { Apagándola después }
			\line { ¡ay, qué vida tan oscura }
			\line { Sin tu amor no viviré! }
		}
		\hspace #1
	}
}
