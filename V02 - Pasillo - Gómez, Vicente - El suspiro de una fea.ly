#(define output-id "PAS23")
\version "2.24.0"
\header {
	title = "El suspiro de una fea"
	subtitle = "Pasillo"
	poet = "Letra: Mario H. Cajar (1897 - 1977)"
	composer = "Música: Vicente Gómez Gudiño (1903 - 1964)"
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
	\key d \major
}

melodia = \new Voice \relative c' {
	\set Timing.beamExceptions = #'() %% fragmenta en grupos de corchea
	\repeat volta 2 {
		r8 fis'8 cis d fis b | a fis d b a fis | d fis a d fis e | g2 r4 |
		a,8 a e'4 d8 b | cis a cis e d b | cis a b4 g8 b | a4 fis r4 | 
		r8 fis'8 cis d fis b | a fis d b a fis | d fis a d fis e | g2 r4 |
		r4 b4 a8 g | fis a, a'4 g8 fis | e a, g'4 fis8 e | d2 r4 |
	}
	\repeat volta 2 { 
		r8 a8 a a a a | g4 a8 cis ~ cis a | e' a, g'4 fis8 e | d4 a8 fis ~ fis a |
		d fis a4 g8 fis | e4 g b | e, g cis, | d fis8 a d, fis |
		a,4 d fis,8 a | g4 a8 cis ~ cis a | e' a, g'4 fis8 e | d4 a8 fis ~ fis a |
		d4 fis8 a g fis | e4 b d | fis a e8 fis | d2 r4 |
	}
	\repeat volta 2 { 
		\key g \major
		r8 d8 cis d e fis | g4 g8 d b g | a'4 a8( fis) d( c) | b'2 r4 |
		g4 fis e | d8 d d c d e | c c c( b) c d | b4 b8 c d e |
		d4 e g | a4 g,8( b) d g | f4 r4 f | e r4 e | 
		ees g( b) | d a b | g2 r4
	}
}

acordes = \chordmode {
	s2. | d2. | b2.:7 | e2.:m | 
	e2.:m | a2.:7 | a2.:7 | d2. | 
	d2. | d2. | b2.:7 | e2.:m | 
	e2.:m | d2. | a2.:7 | d2. |
	d2. | a2.:7 | a2.:7 | d2. |
	b2.:7 | e2.:m | a2.:7 | d2. |
	d2. | a2.:7 | a2.:7 | d2. |
	b2.:7 | e2.:m | a2.:7 | d2. |
	d2. | g2. | d2.:7 | g2. |
	g2. | g2. | d2.:7 | g2. |
	g2.:7 | c2. | g2.:7 | g2.:7 |
	g2.:7 | d2. | g2.
}

lirica = \lyricmode {
	Di cen que no me quie -- res pe -- ro nun -- ca 
	yo te de -- jo de que -- rer
	mi sin por a -- do -- ra -- do mi -- ra que me ma -- to 
	con su -- bli -- ma -- do. 
	Di -- cen que no me quie -- res pe -- ro nun -- ca 
	yo te de -- jo  de que -- rer,
	no seas in -- gra -- to, tier -- no mu -- la -- to, 
	dé -- ja -- te ver.
	No sé por -- que se -- rá que tu mi bien te por -- tas a -- sí
	con tu chi -- chi se -- rás un bri -- bón si no me__a -- mas a mi
	Se sa -- be to -- do__a -- quí__en Pa -- na -- má me
	res -- pon -- dió y lue -- go sol -- tó el muy bo -- cón u -- na 
	car -- ca -- ja -- da cual la del suez Cua -- cón.
	Y de__u -- na vez se fue y no vol -- vió más por a aquí.
	E -- se mal -- va -- do que se ha bur -- la -- do de mi pa -- sión 
	ya me ven -- ga -- ré de__e -- se__in -- fiel si ya ve -- rás,
	ve -- rás, ve -- rás, ve -- rás lo que__ha -- ré.
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

\score { %% genera la muestra MIDI
	\unfoldRepeats { \melodia }
	\midi { \tempo 4 = 150 }
}