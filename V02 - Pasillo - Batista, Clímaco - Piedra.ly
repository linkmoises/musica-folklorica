#(define output-id "PAS03")
\version "2.24.0"
\header {
	title = "Piedra"
	subtitle = "Pasillo"
	composer = "Clímaco Batista Díaz (1907 - 1978)"
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
	\time 3/4
	\tempo "Allegro"
	\key a \minor
}

melodia = \new Voice \relative c' {
	\set Timing.beamExceptions = #'() %% fragmenta en grupos de corchea
	r8 e'8 dis e b d |
	\mark \markup { \small \musicglyph #"scripts.segno" }
	\repeat volta 4 {
		c8 a e c e a | c a e a c e | d b gis' a b4 | r8 d,8 cis d cis d |
		b g b d f e | d b d e g b | a e a b c4 ~ | c8 e, dis e b d |
		c a e c e a | c a c e g e | d a d e f4 ~ | f8 b8 d c b4 ~ |
		b8 a c b a4 ~ | a8 e gis b gis e |
	}
	\alternative {
		\volta 1,3 { a2. ~ | a8 e dis e b d | }
		\volta 2,4 { a'4 r8 a8 a4 | }
	}
	r8 e,8 d e f e |
	\repeat volta 3 {
		e'2. ~ | e8 d c b a gis | b a4. ~ a8 e | c4 r8 a'8 bes a |
		f'4. d8 a4 ~ | a8 f' d a d f | e2. ~ | e8 a, d e f fis |
		gis2. ~ | gis8 e f g a b | c4 c8 b a4 ~ | a8 gis g f e d |
		f4 e2 ~ | e8 f e d c b |
	}
	\alternative {
		{ a2. | r8 e8 d e f e | }
		{ a4 r8 a'8 a4 | r8 e dis \mark \markup { \small \italic "D.S. y sigue a 3" } e b d \bar "||" | \break }
		{ a'4 r8 a8 a4 | }
	}
	r8 cis8 a fis e a |
	\key a \major 
	\repeat volta 2 {
		fis4 cis4. a'8 | fis4 d2 ~ | d8 d' b cis gis d' | b4 gis4. d'8 |
		b4 gis4. b8 | fis4 cis2 ~ | cis8 cis' b fis e a | fis4 cis4. a'8 |
		fis4 fis,4. a8 | cis8 e d2 ~ | d8 fis gis a gis fis | a cis, e4. d8 |
		fis e d cis b e |
	}
	\alternative {
		{ a,2. | r8 cis'8 a fis e a | }
		{ a,4 r8 a'8 a4 | }
	}
	a4 r4 r4 |
	\bar "|."
}

acordes = \chordmode {
%% acordes de guitarra / mejorana
}

lirica = \lyricmode {
%% letra
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
	\midi { \tempo 4 = 120 } %% colocar tempo numérico para que se exporte a velocidad adecuada, por defecto está en 4 = 90
}