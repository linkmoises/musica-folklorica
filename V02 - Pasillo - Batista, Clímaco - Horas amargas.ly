#(define output-id "PAS02")
\version "2.24.0"
\header {
	title = "Horas amargas"
	subtitle = "Pasillo"
	composer = "Clímaco Batista Díaz (1907 - 1978)"
	arranger = "Transcripción: R. Estrada"
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
	\tempo "Allegretto"
	\key a \minor
}

melodia = \new Voice \relative c' {
	r8 f16 e d8 e8 f e | 
	\mark \markup { \small \musicglyph #"scripts.segno" }
	\repeat volta 2 {
		e'2. | r8 b8 c d c b | c b a2 | r8 a8 bes a gis a |
		<c a'>4. <c a'>8 <c a'>4 | r8 e8 f g f e | f8 e d2 |
		r8 f,16 e d8 e f e | b' b r8 e, d' d | r8 gis,8 b b r8 e, |
		c'8 c r8 a e' e | r8 a,8 c c r8 e, | b' b r8 e, d' d |
		r8 gis,8 b b r8 e, \mark \markup { \small \musicglyph #"scripts.coda" } | \bar "||"
	}
	\alternative {
		{ a2. | r8 f16 e d8 e f e | }
		{ a2. | }
	}
	r4 <c a'>4 <c a'> |
	\repeat volta 2 {
		<c a'>4. <c a'>8 <c a'>4 | r8 a'8 gis a b a | <gis b,>2. |
		r4 f4 f | f2. | r8 f8 e f g f | e2. | r8 f,16 e d8 e f e |
		gis8( e) b'( e,) d'4 | r8 f,16 e d8 e f e | a8( e) cis'( a) d( b) |
		f'( e) d( e b c) 
	}
	\alternative {
		{ a4 r8 a'8 a4 | r4 <c, a'> <c a'> | }
		{ a4 r8 a'8 a4 | r8 f,16 e d8 \mark \markup { \small \italic "D.S. al coda" } e f e | \bar "||" }
	}
	\break
	\mark \markup { \small \musicglyph #"scripts.coda" }
	a2. | a8 e' d4. c8 |
	\key f \major 
	\repeat volta 2 {
		<a f>2. | r8 c,8( f a) d( a) | c4. a8 bes4 | 
		bes8 f' e4. c8 | bes2. | r8 bes8( c e a e) |
		g8( f c a) f4 | a8 e' d4. c8 | <a f>2. |
		r8 c,8( f a) d( a) | c4. a8 bes4 | r8 d8( cis d e d) |
		c( bes g e ) c4 | r8 c( e g bes a) |
	}
	\alternative {
		{ f2. | a8 e' d4. c8 | }
		{ f,2 a'4 | }
	}
	f2 r4 |
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
	\midi { \tempo 4 = 115 } %% colocar tempo numérico para que se exporte a velocidad adecuada, por defecto está en 4 = 90
}