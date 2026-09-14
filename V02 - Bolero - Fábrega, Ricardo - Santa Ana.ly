#(define output-id "BOL11")
\version "2.24.0"
\header {
	title = "Santa Ana"
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
	\tempo "Andante"
	\key d \minor
}

melodia = \new Voice \relative c' {
	r8 a'16 a a8 f16 d | a'4 a | r8 bes16 bes bes8 c16 bes | bes4 a |
	r8 g16 g g8 a16 g | g4 f8 f | e8. f16 ~ f g8 f16 | e2 | 
	r8 a16 a a8 f16 d | a'4 a | r8 bes16 bes bes8 c16 bes | bes4 a |
	r8 g16 g g8 a16 g | g4 f8 f | e8. f16 ~ f e8 d16 | a'2 | 
	r8 d8 d8. bes16 | 
	\key d \major
	\repeat volta 2 {
		d4 cis ~ | cis b16 g e cis' | b4 a ~ | a \tuplet 3/2 { d,8 e fis } |
		a4 g8 b16 a | cis4 b8 g16 fis | a2 | r8 fis8 eis fis |
		d'4 cis ~ | cis8 cis ais fis | cis'4 b ~ | b8 b cis d |
		cis4 b8 cis16 d | cis4 b8 a16 gis | a2 | r8 d8 d8. b16 |
		d4 cis ~ | cis e16 e cis d | b4 a ~ | a \tuplet 3/2 { d,8 e fis } |
		a4 g8 b16 a | cis4 b8 g16 fis | a2 | r8 fis8 eis fis | 
		d'4 cis ~ | cis8 e d cis | cis4 b ~ | b8 b b b | 
		b8 a16 fis ~ fis a d8 | cis8. b16 ~ b16 cis e8 |
	}
	\alternative {
		{ d2 | r8 d8 d8. b16 | }
		{ d2 ~ | }
	}
	d ~ | d8 r8 r4 |
	\bar "|."
}

acordes = \chordmode {
	d2:m | d2:m | g2:m | d2:m |
	a2:7 | d2:m | e2:7 | a2:7 |
	d2:m | d2:m | g2:m | d2:m |
	a2:7 | d2:m | e2:7 | a2:7 |
	d2:m |
	a2:7 | a2:7 | d2 | d2 |
	a2:7 | a2:7 | d2 | d2 |
	fis2 | fis2 | b2:m | g2 |
	e2:m | e2:7 | a2 | a2 |
	a2:7 | a2:7 | d2 | d2 |
	a2:7 | a2:7 | d2 | d2 |
	fis2 | fis2 | b2:m | g2 |
	d2 | a2:7 |
	d2 | d2 |
	d2 | 
	d2 | d2 |
}

lirica = \lyricmode {
	Des de~el fon do de | mi~al ma | mi can tar ha sa | li do |
	¡oh! San ta na que | ri do que | di cha pa ra | mi |
	cuan do~a so las me~en | cuen tre | por los a ños can | sa do |
	me ten drás a tu | la do pen | san do so lo~en | tí |
	San ta na |
	mí o | por que de San | ta na | bra zo ten | 
	di do que nos | das fra ter ni | dad | co mo be |
	lle za | que te~en ga | la na | se yer gue~u |
	fa na tu ca | pi lla co lo | nial | San ta na | 
	mí o | par que de San | ta na | vie ja re |
	li quia de nues | tra~al ma na cio | nal | guar da tu | 
	sue lo | la san gre~hu | ma na | que so be |
	ra na lu cha ba | por la li ber | tad
	San ta na |
	tad |
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
			\line \smallCaps \bold { Santa Ana }
			\hspace #1
			\line { Desde el fondo de mi alma }
			\line { mi cantar ha salido }
			\line { ¡Oh! Santa Ana querido }
			\line { que dicha para mí. }
			\hspace #1
			\line { Cuando a solas me encuentre }
			\line { por los años cansado }
			\line { me tendrás a tu lado }
			\line { pensando solo en tí. }
		}
		\hspace #2
		\column {
			\line { Santa Ana mío, parque de Santa Ana }
			\line { brazo tendido que nos das fraternidad }
			\line { como belleza que te engalana }
			\line { se yergue ufana tu capilla colonial. }
			\hspace #1
			\line { Santa Ana mío, parque de Santa Ana }
			\line { vieja reliquia de nuestra alma nacional }
			\line { guarda tu suelo la sangre humana }
			\line { que soberana luchaba por la libertad. }
		}
		\hspace #1
	}
}