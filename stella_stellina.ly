\version "2.19.82"

\header {
  title = "Stella Stellina"
}

\score{
  {
   \time 4/4
   \numericTimeSignature 
   g'4 a'8 a' g'4 e'8 c'
   g' g' a' a' g'4 e'8 c'
   g'4 a'8 a' g'4 e'8 c'
   g' g' a' a' g'4 e'8 c'
   g' g' a' a' g'4 e'8 c'
   g' g' a' a' g'4 e'8 c'
   g' g' a' a' g'4 e'8 c'
   g' g' a' a' g'4 e'8 c'
   g' g' a' g' b'4 b'8 a'
   g' f' e' d' c'4 c'4
   \bar "|."
  }
  \addlyrics{
    Stel -- la, stel -- li -- na, la
    not -- te si~av -- vi -- ci -- na, la
    fiam -- ma tra -- bal -- la, la
    muc -- ca nel -- la stal -- la, la
    muc -- ca e~il vi -- tel -- lo, la
    pe -- co -- ra_e l'a -- gnel -- lo, la
    chioc -- chia_e il pul -- ci -- no, o --
    gnu -- no ha~il suo bam -- bi -- no, o --
    gnu -- no~a~la sua mam -- ma e 
    tut -- ti fan' la nan -- na.
  }
  \layout {
    \context {
      \Lyrics
      \override LyricSpace.minimum-distance = #1.0
    }
  }
}
