#(define output-id "BOL10")
\version "2.24.0"
\header {
	title = "Panamá Viejo"
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
	\time 2/4
	\tempo "Moderato"
	\key c \minor
}

melodia = \new Voice \relative c' {
	r8 \p c16 ees g bes8 c16 | g4 g | r8 f16 g f ees8 f16 | g8 c,4. |
	r8 c16 ees g bes8 c16 | g4 g | r8 f16 g f ees8 d16 | c4 r4 |
	r8 c8 b c | \< f16 f8 f16 aes8 aes | c16 c8 c16 d8 d | b,4 \f r4 \! |
	r8 c8 \< \mf b c | f16 f8 f16 aes8 aes | c16 c8 c16 d8 d | g,4 \f r4 \! |
	r8 c,16 \mf ees g bes8 c16 | g4 g | r8 f16 g f ees8 f16 | g8 c,4. |
	r8 c16 ees g bes8 c16 | g4 g | r8 f16 g f ees8 d16 | e2 |
	r8 g8 fis g |
	\key c \major 
	\repeat volta 2 {
		c4 c | r8 d16 e ~ e d8 c16 | b4 b | r8 c16 d ~ d c b8 |
		a8 a16 g ~ g a g8 | a8 a16 g ~ g a a8 | a4 g | r8 g8 fis g |
		d'4 d | r8 e16 f ~ f e d8 | c4 b | r8 c16 d ~ d c b8 |
		a8 g16 g ~ g a b8 | a8 g16 a ~ a b d8 | a4 g | r8 g8 fis g |
		c4 c | r8 d16 e ~ e d c8 | b4 b | r8 c16 d ~ d c b8 |
		bes8 \f bes16 bes ~ bes8 c16 d | e8 e16 e ~ e d c8 | d4 c | r8 c8 \p d8. c16 | 
		d4 c | r8 c8 d c | d4 c | r8 b8 b a | 
		a8 g16 g ~ g a b8 | a8 g16 a ~ a b e8 |
	}
	\alternative {
		{ c4 r4 | r8 g8 fis g | }
		{ c2 ~ | }
	}
	c2 ~ | c8 r8 r4 |
	\bar "|."
}

acordes = \chordmode {
	c4:m g4:7 | c2:m | f4:m g4:7 | c2:m |
	c4:m g4:7 | c2:m | f4:m g4:7 | c2:m |
	c2:m | f2:m | gis2 | g2:7 |
	g2:7 | f2:m | gis2 | g2:7 |
	g2:7 | c2:m | f4:m g4:7 | c2:m |
	c4:m g4:7 | c2:m | g2:7 | c2 |
	g2:7 |
	c2 | c2 | e2:m | e2:m |
	c2 | a2:7 | d2:m | g2:7 |
	d2:m | d4:m g4:7 | d2:m | d2:m |
	f2 | g2:7 | c2 | g2:7 | 
	c2 | c2 | e2:m | e2:m |
	g2:m | c2:7 | f2 | f2 |
	f2:m | f2:m | c2 | a2:7 |
	d2:m | g2:7 | 
	c2 | g2:7 |
	c2 |
	c2 | c2 |
}

lirica = \lyricmode {
	He vi vi do go | zan do | el re cuer do le | ja no |
	de las pie dras ve | tus tas | que~ha blan de~he roi ci | dad |
	ba jo la | som bra de sus mu | ra llas se re di | mió |
	la san gre~his | pa na que con cor | sa rios se con fun | dió. |
	Oh mis mu ros que | ri dos | por los si glos guar | da dos |
	de tu lu jo pa | sa do | so lo que da~el do | lor |
	Pa na má |
	vie jo | ciu dad des tru | i da | por crue les pi |
	ra tas que~un día so | ña ron con tus te | so ros | tu mar tran 
	qui lo | pa re ce~un es | pe jo | en don de se | 
	mi ra tu cie lo | be llo que tan to~a | do ro | Pa na má |
	vie jo | tus rui nas sa | gra das | en no che ca |
	lla da mur mu ran | fra ses co mo ple | ga rias | y no muy |
	le jos | en tre tus | pal mas | me trae la |
	bri sa sus pi ros | le ves lle nos de~a |
	mor. | Pa na má |
	mor. |
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
	\midi { \tempo 4 = 90 } %% colocar tempo numérico para que se exporte a velocidad adecuada, por defecto está en 4 = 90
}

\markup {
	\fill-line {
		\hspace #1
		\column {
			\line \smallCaps \bold { Panamá Viejo }
			\hspace #1
			\line { He vivido gozando }
			\line { el recuerdo lejano }
			\line { de tus piedras vetustas }
			\line { que hablan de heroicidad. }
			\hspace #1
			\line { Bajo la sombra }
			\line { de tus murallas se redimió, }
			\line { la sangre hispana que }
			\line { con corsarios se confundió. }
			\hspace #1
			\line { Oh mis muros queridos }
			\line { por los siglos guardados }
			\line { de tu lujo pasado }
			\line { sólo queda el dolor. }
		}
		\hspace #2
		\column {
			\line { Panamá viejo, ciudad destruida }
			\line { por crueles piratas }
			\line { que un día soñaron con tus tesoros }
			\line { tu mar tranquilo parece un espejo }
			\line { en donde se mira }
			\line { tu cielo bello que tanto adoro. }
			\hspace #1
			\line { Panamá viejo, tus ruinas sagradas }
			\line { en noches calladas }
			\line { murmuran frases como plegarias }
			\line { y no muy lejos, entre tus palmas }
			\line { me trae la brisa suspiros leves }
			\line { llenos de amor. }
		}
		\hspace #1
	}
}