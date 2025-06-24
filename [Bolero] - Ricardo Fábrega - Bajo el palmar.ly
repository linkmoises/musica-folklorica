#(define output-id "BOL05")
\version "2.24.0"
\header {
	title = "Bajo el palmar"
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
	\tempo "Andantino"
	\key d \minor
}

melodia = \new Voice \relative c' {
	\repeat volta 2 {
		a'2 a ~ | a4 g bes4. a8 | g2 f ~ | f r2 |
		c'2 c ~ | c4 g a bes | c1 ~ | c2 r2 |
		a2 a ~ | a4 cis e4. cis8 | e2 d ~ | d4 r2 d,4 |
		f2 f ~ | f4 f g gis |
	}
	\alternative {
		{ a1 ~ | a2 r2 }
		{ a1 | }
	}
	r4 a4 a4. f8 |
	\key d \major
	\repeat volta 2 {
		a1 ~ | a4 fis8 g a4 g8 fis | g2 a ~ | a4 b b4. g8 |
		b1 ~ | b4 g8 a b4 a8 gis | b2 a ~ | a4 a d4. cis8 |
		e1 ~ | e4 d8 cis b4 fis8 a | cis1 ~ | cis4 g a b |
		d1 ~ | d4 cis8 b d4 cis8 a | fis1 | r4 a a4. fis8 |
		a1 ~ | a4 fis8 g a g4 fis8 | g2 a ~ | a4 b b4. g8 |
		b1 ~ | b4 g8 a b4 a8 gis | b2 a ~ | a4 d e d |
		e1 ~ | e4 d8 cis e4 d8 b | a1 ~ | a4 fis a ais | 
		b1 ~ | b4 cis8 d e4 d8 cis | 
	}
	\alternative {
		{ d1 | r4 a4 a4. fis8 | }
		{ d'1 ~ | }
	}
	d ~ | d4 r4 r2 |
	\bar "|."
}

acordes = \chordmode {
	d1:m | a1:7 | d1:m | d1:m |
	c1:7 | c1:7 | f1 | f1 |
	a1:7 | a1:7 | d1:m | d1:m |
	d1:m | bes1 |
	a1 | a1 |
	a1 |
	a1 |
	d1 | d1 | a1:7 | a1:7 |
	a1:7 | a1:7 | d1 | d1 |
	d1 | d1 | a1:7 | a1:7 |
	a1:7 | a1:7 | d1 | d1 |
	d1 | d1 | a1:7 | a1:7 |
	a1:7 | a1:7 | d1 | d1:7 |
	g1 | g1:m | d1 | d1 | 
	e1:m | a1:7 |
	d1 | d1 |
	d1 | 
	d1 | d1 |
}

lirica = \lyricmode {
	Vue la | mi pen sa | mien to | le jos |
	le jos de~a | quí | cuan do | por un mo | 
	men to | a | sol las | es toy sin | 
	tí. |
	tí. |
	Ba jo~el pal |
	mar | u na no che muy | be lla | jun ti to~a | 
	tí | a la luz de~u na~es | tre lla | con mi can ción | 
	fra gan tí si ma | flor | mi co ra | zón | 
	te~en tre gué con mi~a | mor. | Ba jo~el pal | mar |
	y~en mis bra zos dor | mi da | sin tien do | yo |
	el ca lor de tu | vi da | re cuer dos | son |
	que no pue do~ol vi | dar | re cuer dos | son |
	de~a quel lin do pal | 
	mar. |
	Ba jo~el pal |
	mar. |

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
	\midi { \tempo 2 = 80 } %% colocar tempo numérico para que se exporte a velocidad adecuada, por defecto está en 4 = 90
}

\markup {
	\fill-line {
		\hspace #1
		\column {
			\line \smallCaps \bold { Bajo el palmar }
			\hspace #1
			\line { Vuela mi pensamiento, }
			\line { lejos. . . lejos de aquí }
			\line { cuando por un momento }
			\line { a solas estoy sin ti. }
			\hspace #1
			\line { Bajo el palmar }
			\line { una noche muy bella }
			\line { juntito a ti }
			\line { a la luz de una estrella, }
			\hspace #1
			\line { con mi canción }
			\line { fragantísima flor, }
			\line { mi corazón }
			\line { te entregué con mi amor. }
		}
		\hspace #2
		\column {
			\line { Bajo el palmar }
			\line { y en mis brazos dormida }
			\line { sintiendo yo }
			\line { el calor de tu vida. }
			\hspace #1
			\line { Recuerdos son }
			\line { que no puedo olvidar }
			\line { recuerdos son }
			\line { de aquel lindo palmar. }
		}
		\hspace #1
	}
}