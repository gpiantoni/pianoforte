\version "2.19.82"

\header {
  title = "Op een klein stationnetje"
}

\score{
  {
   \time 4/4
   \numericTimeSignature 
   \key g \major
   g'8 g' g' a' b' b' b'4
   a'8 g' a' b' g'4 g'
   b'8 b' b' c'' d'' d'' d''4
   c''8 b' c'' d'' b'4 r4
   d''8 d'' d'' d'' e''4 e''
   c''8 c'' c'' c'' d'' d'' d''4
   g'8 g' g' a' b'4 b' 
   a' a' g' r4
   \bar "|."
  }
  \addlyrics{
    Op een klein sta -- tion -- ne -- tje,
    's_mor -- gens in de vroeg -- te,
    staan de se -- ven wa -- gen -- tjes
    net -- jes op een rij.
    En het ma -- chi -- nist -- je
    draait dan aan het wie -- le -- tje.
    Hak -- ke hak -- ke puf puf, weg zijn zij!
  }
  \layout {
    \context {
      \Lyrics
      \override LyricSpace.minimum-distance = #1.0
    }
  }
}
