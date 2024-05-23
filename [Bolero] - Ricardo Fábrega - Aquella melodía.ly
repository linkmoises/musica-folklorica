\version "2.23.2"
\header {
	title = "Aquella melodía"
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
	\time 4/4
	\tempo "Andante"
	\key a \minor
}

melodia = \new Voice \relative c' {
	\repeat volta 2 {
		a'4 b8 a ~ a b a4 | b4. a8 b a e c | g'2 f ~ | f r2 | 
		e4 f8 e ~ e f e4 | 
	}
	\alternative {
		{ f4. e8 dis e g f | e1( | fis2 gis) }
		{ f4. e8 dis e c' b | a1 | }
	}
	\mark \markup { \small \musicglyph #"scripts.segno" }
	\repeat volta 2 {
		r4 a4 b c | d4. c8 b2 ~ | b4. a8 b c b a | c4.( a8 g2) ~ |
		g2 r2 | f4 g8 a b4. a8 | g4. f8 g a gis f | e1 ~ |
		e1 | a4 b8 a ~ a b a4 | b4. a8 b a e c | g'2 f ~ |
		f r2 | e4 f8 e ~ e f e4 | \mark \markup { \small \musicglyph #"scripts.coda" } f4. e8 dis e c' b | \mark \markup { \small \italic "D.S. a coda" } a1 |
	}
	\break
	\mark \markup { \small \musicglyph #"scripts.coda" }
	f4. e8 dis e c' r8 | c4^\markup { \italic rit. } b a2 ~ | a1\fermata | 
	\bar "|."
	\cadenzaOn
		\stopStaff
			\repeat unfold 1 {
				s1
				\bar ""
			}
		\startStaff
	\cadenzaOff
}

acordes = \chordmode {
	a1:m | a2:m a2:7 | d1:m | d1:m |
	e1:7 | e1:7 | a1:m | b2 e2:7 |
	e1:7 | a1:m |
	a1:m | g1 | g2 g2:7 | c1 |
	c1 | d1:m | g1:7 | e2:m d2:m |
	c2 e2:7 | a1:m | a2:m a2:7 | d1:m |
	d1:m | e1:7 | e1:7 | a1:m |
	a2.:m e4:7 | e1:7 | a1:m |
}

lirica = \lyricmode {
	No vuel vas a can | tar a que lla me lo | dí a |
	que te can ta ba | yo ha cien do te so | ñar |
	%% barra repetición
	sar que co me tí~un e | rror | 
	Que~al gu na | vez llo ré | te nien do te~a mi |
	la------do | en fer mo de~an sie | dad por con quis tar tu~a |
	mor. | Hoy no me~im por ta | ya pues tu me~has trai cio |
	na do | y pue do con fe | sar que co me ti~un e | rror |
	%% final
	sar que co me tí | un e rror |
}

liricarepeticion = \lyricmode {
	O yen do~es ta can | ción se par te~el al ma | mí a |
	y pue do con fe |
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
	\midi { \tempo 4 = 90 } %% colocar tempo numérico para que se exporte a velocidad adecuada, por defecto está en 4 = 90
}

\markup {
	\fill-line {
		\hspace #1
		\column {
			\line \smallCaps \bold { Aquella melodía }
			\hspace #1
			\line { No vuelvas a cantar aquella melodía }
			\line { que te cantaba yo haciéndote soñar, }
			\line { oyendo esta canción se parte el alma mía }
			\line { y puedo confesar que cometí un error. }
			\hspace #1
			\line { Que alguna vez lloré, teniéndote a mi lado }
			\line { enfermo de ansiedad por conquistar tu amor, }
			\line { hoy no me importas ya, pues tú me has traicionado }
			\line { y puedo confesar que cometí un error. }
		}
		\hspace #2
	}
}



