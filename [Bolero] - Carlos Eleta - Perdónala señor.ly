\version "2.23.2"
\header {
	title = "Perdónala señor"
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
	\key d \minor
}

melodia = \new Voice \relative c' {
	r4 r8 a'8 a g f e | 
	\mark \markup { \small \musicglyph #"scripts.segno" }
	\repeat volta 2 {
		d1 ~ | d2 d4 e8 f | a g~ g4 ~ g2 | r4 g8 a bes4 c8 bes |
		a g f e g f ~ f4 | r4 f8 g a4 bes8 a | g f e d f e ~ e4 |
		r4 e8 f g4 a8 g | f e d cis e d ~ d4 ~ | d1 \mark \markup { \small \musicglyph #"scripts.coda" } | \bar "||"
		r8 c'8 c c c4 a8 bes | c1 ~ | c4 a8 bes c4 d8 ees | 
		d8 c bes a c bes ~ bes4 | r8 bes8 bes bes bes4 g8 a | bes1 ~ |
		bes2 g8 a bes d | c bes a g bes a ~ a4 | r4 r8 a8 a g \mark \markup { \small \italic "D.S. al coda" } f e | \break
	}
	\mark \markup { \small \musicglyph #"scripts.coda" }
	r4 r8 a8 a4. g8 | bes1 | r2 cis2 | d1 ~ | d1 |
	\bar "|." 
}

acordes = \chordmode {
	a1:7 |
	d1:m | d1:7 | g1:m | g1:m |
	g2:m d2:m | d1:m | d2:m a2:7 | a1:7 | 
	a2:7 d2:m | d1:m | d1:m | d1:7 |
	d1:7 | d2:7 g2:m | g1:m | c1:7 |
	c1:7 | c2:7 f2 | a1:7 |
	%% salto
	d1:7 | g1:m | a1:7 | d1:m | 
}

lirica = \lyricmode {
	Per dó na la Se | ñor yo te lo | pi do |
	per do nad sus men | ti ras y trai cio nes | y~en lu gar del cas |
	ti go me re ci do | so lo da le a | mor y ben di cio nes |
	Que mil ca ri cias le | dé | que sus o jos que | ri dos nun ca llo ren |
	que siem pre ten go la | fé | y~el a mor de~a | que llos que la~a do ren |
	Per dó na la Se |
	Per dó na la Se ñor |
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
			\line \smallCaps \bold { Perdónala Señor }
			\hspace #1
			\line { Perdónala señor, yo te lo pido }
			\line { Perdonad sus mentiras y traiciones }
			\line { y en lugar del castigo merecido }
			\line { solo dale amor y bendiciones. }
			\hspace #1
			\line { Que mil caricias le des }
			\line { que sus ojos queridos nunca lloren }
			\line { que siempre tenga la fé }
			\line { y el amor de aquellos que la adoren. }
			\line { El amor y la pasión. }
		}
		\hspace #2
		\column {
			\line { Perdónala señor, yo te lo pido }
			\line { Perdona sus mentiras y traiciones }
			\line { y en lugar del castigo merecido }
			\line { solo dale amor y bendiciones. }
			\hspace #1 
			\line { Perdónala Señor}
		}
		\hspace #1
	}
}