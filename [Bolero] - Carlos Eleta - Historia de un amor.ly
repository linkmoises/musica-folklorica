#(define output-id "BOL02")
\version "2.24.0"
\header {
	title = "Historia de un amor"
	subtitle = "Bolero"
	composer = "Carlos Eleta Almarán (1918 - 2013)"
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
	\time 4/4
	\tempo "Andante"
	\key a \minor 
}

melodia = \new Voice \relative c' {
	r4 e8 e e' e ~ \tuplet 3/2 { e8 e d } |
	\repeat volta 2 {
		f8 d ~ d b16 c d2 ~ | d4 e,8 e d' d ~ \tuplet 3/2 { d8 d c } |
		e8 c ~ c a16 b c2 ~ | c4 e,8 e c' c ~ \tuplet 3/2 { c8 c b } |
		d8 b ~ b g16 a b8 b b a | 
	}
	\alternative {
		{ c a ~ a f16 g a8 a a gis | b1 ~ | b4 e,8 e e' e ~ \tuplet 3/2 { e8 e d } | }
		{ c8 a ~ a f16 g a8 gis c b | a1 | }
	}
	r4 c8 b a b c a | d4 ~ \tuplet 3/2 { d8 d c } b4 b8 a | gis4 d'8 c b c d b |
	e4 ~ \tuplet 3/2 { e8 e d } c4 c8 b | a4 e'8 d cis d e d | f f ~ f2. | 
	r4 d8 c b c d b | e1 | r4 c8 b a b c a | 
	\mark \markup { \small \musicglyph #"scripts.coda" }
	\bar "||"
	d d ~ \tuplet 3/2 { d8 d d } dis4 \tuplet 3/2 { dis8 dis dis } | e1 ~ | 
	\after 4 ^\markup { \small \italic "D.S. al coda" } e4 r4 r2 |
	\bar "||" \break
	\mark \markup { \small \musicglyph #"scripts.coda" }
	d2 d ~ | d4 d8 c b a g f | e1 ~ | e4 r4 r2 |
	\bar "|."
	\cadenzaOn
		\stopStaff
			\repeat unfold 2 {
				s1
				\bar ""
			}
		\startStaff
	\cadenzaOff
}

acordes = \chordmode {
	s2 a2:m |
	d1:m6 | e1:7 | a1:m | a1:m |
	g1:7 | f1 | e1:7 | 
	e1:7 |
	f2 e2:7 | a1:m |
	a1:m | d1:m6 | e1:7 | a1:m |
	a1:m | d1:m6 | g1:7 | c1 |
	a1:m | d2:m6 b2:7 | e1:7 | e1:7 |
	%% salto de la coda
	d1:m | d2:m f2 | e1:7 | e1:7 |
}

lirica = \lyricmode {
	Ya no es~tas mas a mi | la do co ra zón | en el al ma só lo |
	ten go so le dad | y si ya no pue do | ver te por que Dios me hizo que |
	rer te para ha cer me su frir | más. |
	Siem pre fuis te la ra
	\repeat unfold 9 {\skip 1}
	Es la histo ria de un~a | mor co mo no~hay o~tra i | gual, que me hi zo com pren |
	der todo el bien to do~el | mal que le dio luz a mi | vi da |
	a pa gán do la des | pués | Ay que vi da tan os | cu ra sin tu amor no vi vi | ré |
	%% salto de la coda
	cu ra sin tu amor no vi vi | ré |
}

liricarepeticion = \lyricmode {
	\repeat unfold 6 {\skip 1} 
	zón de mi exis tir | a do rar te pa ra | mi era ob se sión |
	en tus be sos yo encon | tra ba el ca lor que me brin | 
	\repeat unfold 15 {\skip 1}
	da ba el a mor y la pa sión.
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
	\addlyrics { \set fontSize = #-2 \liricarepeticion } 
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
			\line \smallCaps \bold { Historia de un amor }
			\hspace #1
			\line { Ya no estás a mi lado, corazón }
			\line { En el alma sólo tengo soledad }
			\line { Y si ya no puedo verte }
			\line { Porque dios me hizo quererte }
			\line { Para hacerme sufrir más... }
			\hspace #1
			\line { Siempre fuiste la razón de mi existir }
			\line { Adorarte para mí fue religión }
			\line { Y en tus besos yo encontraba }
			\line { El calor que me brindaba }
			\line { El amor y la pasión. }
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
