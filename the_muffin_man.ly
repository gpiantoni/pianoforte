\version "2.19.82"

\header {
  title = "The Muffin Man"
}

upper = {
   \clef treble
   \key f \major
   \time 4/4
   \numericTimeSignature 
   \partial 4
   c'4-1
  \bar ".|:"
   f'-3 f' f'4. g'8
   a'4-5 f' f'4. e'8
   d'4-1 g' g'4. f'8
   e'4-2 c'-1 c'4. c'8
   f'4-3 f' f'4. g'8
   a'4 f' f'4. e'8
   d'4-1 g'-5 f' e'
   <c' a'>2-13 r4 c'4
  \bar ":|."
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

words_two = {
  \set stanza = #"2. "
  \lyricmode {
    Oh,
    yes, we know the
    muf -- fin man? The
    muf -- fin man? The
    muf -- fin man? Oh,
    yes, we know the
    muf -- fin man who
    lives down Dru -- ry
    Lane.
  }
}

lower = {
   \clef bass
   \key f \major
   \time 4/4
   \numericTimeSignature 
   \partial 4
   r4 
   <f-5 a-3>1
   <f c'>2 <f a>2
   <g bes>1
   <c bes>1
   <f a>1
   <f c'>2 <f a>
   <g bes> <c bes>
   <f a>1
}

\score{
  \new PianoStaff <<
    \new Voice = "one" \upper
    \new Lyrics \lyricsto "one" {
      \words_one
    }
    \new Lyrics \lyricsto "one" {
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
