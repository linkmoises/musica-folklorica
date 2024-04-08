\version "2.23.2"
\header {
	title = "La Realidad (transcripción original)"
	subtitle = "Danzón Cumbia"
	composer = "José De La Rosa Cedeño (1907 - 1990)"
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

global= {
	\key g \major
	\time 2/4
	\tempo "Allegretto"
}

melodia = \new Voice \relative c' {
	r8 b'16 e8 g16 b8 |
	\repeat volta 2 {
		dis,16 fis a c c, e g b | dis,8 b16 dis8 fis16 a8 | 
		g16 fis e dis e fis g fis | e8 b16 g'8 e16 b8 |
		fis'16 fis fis a, c c e e | dis8 b16 dis8 fis16 a8 |
		g16 b fis a g fis e dis | e16 g e b gis e gis b |
		f' e dis e b d c b | a16 a' e c a' e c e | 
		c'16 a e c c' a e c | b16 b' g e b b' g e |
		a16 g fis e d c b a | g e fis  g a b c b |
		e8( dis16 b8 a16 fis8) | 
	}
	\alternative { 
		{ e8 b'16 e8 g16 b8 | }
		{ e,,4( e4) | }
	}
	\repeat volta 2 {
		r8 b'8 e g | e8. b8. g8 | b8 b e d | b4 a4( | 
		a8) b8 dis fis | d8. b8. a8 | fis fis a b | g4 e4 |
		gis4 b8 f' | e8. d8. b8 | gis4 f'8 e | d4 c4 |
		r8 a'8 g fis | g8. e8. b8 | fis'8 fis dis b | 
	}
	\alternative {
		{ e4 r4 | }
		{ e4 r8 e16 e | e4 r4 | }
	}
	\key cis \minor 
	\repeat volta 2 {
		e,16 gis b e gis8 e | cis8. a16 a'8 fis | dis8. b16 b'8 gis | 
	}
	\alternative {
		{ e2 | }
		{ e4. e16 e | }
	}
	\repeat volta 2 {
		a8. cis16 fis,8 a | dis,8. b8. b'8 | a8 fis16 dis8 b16 b'8 |
	}
	\alternative {
		{ e,4. e16 e | }
		{ e4 r8 b16 b |}
	}
	\repeat volta 2 {
		b8. e16 cis8 a' | dis,8. b16 a'8 b | gis8 e cis a' |
	}
	\alternative {
		{ b,4 r8 b16 b | }
		{ b4 b16 e gis e |}
	}
	\repeat volta 2 {
		cis8 a' a fis | b4 b,16 e gis e | cis8 a fis dis' |
	}
	\alternative {
		{ b4 r8 b16 b | }
		{ b4 r16 b16 gis' fis | e4 r4 | }
	}
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
	\midi { \tempo 4 = 105 }
}