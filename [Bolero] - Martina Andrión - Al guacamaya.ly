\version "2.23.2"
\header {
	title = "Al guacamaya"
	subtitle = "Bolero"
	composer = "Martina Andrión (1907 - 2005)"
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
	\time 2/4
	\tempo "Adagio"
	\key g \minor
}

melodia = \new Voice \relative c' {
	\partial 4 d8. d16 |
	d'4 d ~ | \tuplet 3/2 { d8 c d } ees8. d16 | c4 bes ~ | bes g16 g g g |
	aes8 g ~ g4 ~ | g g16 g g g | aes8 g ~ g fis16( g) | bes8. g16 ~ g8 f |
	ees2 ~ | ees4 d8. d16 | c'4 c ~ | \tuplet 3/2 { c8 a bes} c8. d16 |
	c4 bes ~ | bes8. d,16 d8 g16 bes16 | d16 d8 d16 d8 ees16 d | c16 c8 c16 c8 d16 c |
	bes2 ~ | bes8. d,16 d8 g16 a | bes16 bes8 bes16 bes8 c16 bes | a16 a8 a16 a8 bes16 a |
	g2 ~ | g8. b16 ~ b8 g | \bar "||"
	\key g \major 
	\tuplet 3/2 { e8 e d } \tuplet 3/2 { e8 e d } | \tuplet 3/2 { e8 e d } \tuplet 3/2 { e8 e d } | 
	\tuplet 3/2 { e8 e d } \tuplet 3/2 { g fis d } | c2 ~ |  c8. c'16 ~ c8 a | 
	\tuplet 3/2 { fis8 fis e } \tuplet 3/2 { fis8 fis e } | fis8 fis fis16 e fis e | 
	\tuplet 3/2 { fis8 fis e } \tuplet 3/2 { g8 fis e } | d2 ~ | d4 d8. e16 |
	\tuplet 3/2 { f8 f e } \tuplet 3/2 { f8 f e } | \tuplet 3/2 { f8 f f } \tuplet 3/2 { g8 a b } |
	\tuplet 3/2 { a8 a a } \tuplet 3/2 { b8 a f } | e2 ~ | e4 g8. g16 | g4 ees ~ |
	ees g16 fis g a | b8 b4. ~ | b4 d,16 d c' b | b8 a4. ~ | a4 a16 a b c |
	b2 ~ | b4 g8. g16 | g4 ees ~ | ees g16 fis g a | 
	b8 b4. ~ | b4 d16 b a g | a8 e4. ~ | e4 a16 a g fis | 
	g2 ~ | g8 r8 r4 |
	\bar "|."
}

acordes = \chordmode {
	s4 |
	g2:m | g4:m d4 | g2:m | g2:m |
	g2:7 | g2:7 | g2:7 | g2:7 | 
	c2:m | c2:m | d2:7 | d2:7 |
	g2:m | g2:m | g2:m | d2:7 |
	g2:m | g2:m | g2:m | d2:7 |
	g2 | g2 | g2 | g2 | 
	g4 e4:7 | a2 | a2 | d2:7 |
	d2:7 | d2:7 | g2 | g2 |
	g2:7 | g2:7 | g2:7 | c2 |
	c2 | c2:m | d2:7 | g2 |
	e2:7 | a2:m | d2:7 | g2 |
	g2 | c2:m | d2:7 | g2 |
	e2:7 | a2:m | d2:7 | g2 | 
	g2 |
}

lirica = \lyricmode {
	Gua ca | ma ya | cen ti ne la | mí o | 
	de~o ro le gen | da rio | de~o ro le gen | da rio her |
	mo so ba | úl. | Mon je | que~o ra |
	ca lla do~y som | brí o | a llá~en la le | ja na a llá~en la le |
	ja na be lle za de~a | zul, | a llá~en la le | ja na a llá~en la le |
	ja na be lle za de~a | zul. | E res | fon do de tar des tran |
	qui las man tón de ma | ni la co lor o ro~y | té. E res | cum bre de sol cual nin |
	gu na fa ro de la | lu na a mor que can té | A tu | som bra se duer me ri | 
	sue ña her mo sa~y pe | que ña la vir gen que~a | mé | 
	Gua ca | ma ya | lin da Gua ca | ma ya |
	mon je que~o ra~y | ca lla | mi Pe no no | mé |
	Gua ca | ma ya | lin da Gua ca | ma ya |
	mon je que~o ra~y | ca lla | mi Pe no no | mé.
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
	\addlyrics \lirica
	\override Lyrics.LyricText.font-size = #-0.5
>>
\layout {}
}

\score { %% genera la muestra MIDI melódica
	\unfoldRepeats { \melodia }
	\midi { \tempo 4 = 60 } %% colocar tempo numérico para que se exporte a velocidad adecuada, por defecto está en 4 = 90
}

\markup {
	\fill-line {
		\hspace #1
		\column {
			\line \smallCaps \bold { Al guacamaya }
			\hspace #1
			\line {¡Guacamaya! Centinela mío.}
			\line {De oro legendario,}
			\line {de oro legendario}
			\line {hermoso baúl.}
			\line {Monje que ora callado y sombrío}
			\line {allá en la lejana}
			\line {allá en la lejana}
			\line {belleza de azul.}
			\hspace #1
			\line {Eres fondo de tarde tranquila.}
			\line {Mantón de manila}
			\line {color de oro y té.}
			\line {Eres cumbre del sol cual ninguna}
			\line {faro de la luna}
			\line {amor que canté.}
		}
		\hspace #2
		\column {
			\line {A tu sombra se duerme risueña}
			\line {hermosa y pequeña}
			\line {la virgen que amé.}
			\line {¡Guacamaya! ¡Lindo Guacamaya!}
			\line {Monje que ora y calla}
			\line {¡Mi Penonomé!}
		}
		\hspace #1
	}
}