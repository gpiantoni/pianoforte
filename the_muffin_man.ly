\version "2.19.82"

\header {
  title = "The Muffin Man"
}

upper = {
   \clef treble
   \time 4/4
   \numericTimeSignature 
   \partial 4
   c'4 
   f' f' f'4. g'8
   a'4 f' f'4. e'8
   d'4 g' g'4. f'8
   e'4 c' c'4. c'8
   f'4 f' f'4. g'8
   a'4 f' f'4. e'8
   d'4 g' f' e'
   <c' a'>2 r4 c'4
}


words_one = {
  \set stanza = #"1. "
  \lyricmode {
    Oh,
    do you know the
    muf -- fin man? The
    muf -- fin man? The
    muf -- fin man? Oh,
    do you know the 
    muf -- fin man who
    lives down Dru -- ry
    Lane? 1.Oh
  }
}

words_two = \lyricmode {
    Oh,
    do you know the
    muf -- fin man? The
    muf -- fin men? The
    muf -- fin man? Oh,
    do you know the 
    muf -- fin man who
    lives down Dru -- ry
    Lane? 1.Oh
  }

lower = {
   \clef bass
   \time 4/4
   \numericTimeSignature 
   \partial 4
   r4 
   <f a>1
   <f c'>2 <f a>2
   <g b>1
   <c b>1
   <f a>1
   <f c'>2 <f a>
   <g b> <c b>
   <f a>1
}

\score{
  \new PianoStaff <<
    \new Voice = "one" \upper
    \new Lyrics \lyricsto "one" {
      \words_one
      \words_two
    }
    \new Staff = "two" \lower
  >>
  \layout {
    \context {
      \Lyrics
      \override LyricSpace.minimum-distance = #1.0
    }
  }
}
