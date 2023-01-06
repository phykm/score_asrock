\version "2.22.0"
\header {
  title = "something rock"
  composer = "Katsuhiko Matsuhisa"
  tagline = \markup {
    \column {
      "2017-2022"
    }
  }
}
% \include "english.ly"
% これがドイツ音名入力を妨害していた。

global = { \time 4/4 }
dKey = { \key d \major }
bKey = {\key b \major }

\include "vocal.ly"
voc_melo = {
  \global
  \clef "treble_8"
  { 
    \bKey
    \intro_vocal_tachet
    \amelo_vocal
    \bmelo_vocal
    \amelohalf_vocal
    \hook_vocal
    \hookafter_vocal
    %
    \bar "|."
  } 
}

\include "guitar1.ly" 
guitar_melo = {
  \global
  \clef "treble_8"
  {
    \bKey
    \intro_guitar
    \amelo_guitar
    \bmelo_guitar
    \amelohalf_guitar
    \hook_guitar
    \hookafter_guitar
    %
    \bar "|."
  }
}

\include "guitar2.ly"
guitar_code = {
  \global
  \clef "treble_8"
  {
    \bKey
    %
    \bar "|."
  }
}


\include "bass.ly"
bass = {
  \global
  \clef "bass_8"
  { 
    \bKey
    \intro_bass
    \amelo_bass
    \bmelo_bass
    \amelohalf_bass
    \hook_bass
    \hookafter_bass
    %
    \bar "|."
  }
}

\include "chordnames.ly"
chordnames = {
  { 
    \bKey
    %
    \bar "|."
  } 
}

% よくある日本のバンドスコアの形式に再定義
#(define mydrums '(
    (crashcymbal xcircle #f 7)
    (ridecymbal cross #f 6)
    (hihat cross #f 5)
    (closedhihat cross stopped 5)
    (openhihat cross open 5)
    (halfopenhihat cross halfopen 5)
    (snare default #f 1)
    (hightom default #f 3)
    (himidtom default #f 2)
    (lowmidtom default #f 0)
    (lowtom default #f -1)
    (bassdrum default #f -3)
  )
)

\include "drums.ly" 

drumContents = {
  \global
  {
    %
    \bar "|."
  }
}




\score {
  \new StaffGroup = "band" <<
    \new Staff = "main" \with { instrumentName = "Vocal" }
    % tempoの位置がキモいけど、なぜかStaffGroupで同じ値をセットすると最初の段以外のtempo表記は無視される。
    % tempoの許容配置位置と挙動がよくわからない。
    { \tempo 4 =112 \voc_melo }
    \new Staff = "guitar1" \with { instrumentName = "Guitar 1" }
    { \tempo 4 =112 \guitar_melo }
    \new ChordNames = "guitarchords"
    { \chordnames }
    \new Staff = "guitar2" \with { instrumentName = "Guitar 2" }
    { \tempo 4 =112 \guitar_code } 
    \new Staff = "bass" \with { instrumentName = "Bass" }
    { \tempo 4 =112 \bass }
    \new DrumStaff \with { instrumentName = "Drums" }
    {
      \set DrumStaff.drumStyleTable = #(alist->hash-table mydrums)
      \drumContents 
    }
  >>
  \layout {
  }
}