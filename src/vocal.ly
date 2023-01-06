intro_vocal_tachet = \relative c' {
    R1 R1 R1 R1
    \key d \major
    R1 R1 R1 R1
}

amelo_vocal = \relative c' {
    r4 a16 b8 a16 d8 a8~4
    r4 a16 b8 a16 e'8 a,8~8 g16 fis16
    g8. a16 fis4~8 g16 fis16 e8 d8
    e8. a16 a2. 
    
    r4 a16 b8 a16 d8 a8~4
    r4 \tuplet 3/2 {a8 b8 a8} e'8 a,8~8 g16 fis16
    g8. d'16 4~8 g,8 b8 d8
    e8. a,16 a2. 
}

bmelo_vocal = \relative c' {
    r4 c8 bes16 a16~8 g8 fis8 g8 g8. b16~8 e,8~8 dis4.
    r4 c'8 b16 a16~8 gis8 a8 b8 a4 d4 b4 cis4
}

amelohalf_vocal = \relative c' {
    r4 a16 b8 a16 d8 a8~4
    r4  \tuplet 3/2 {a8 b8 a8} e'8 a,8~8 g16 fis16
    g8. d'16 d4~8 cis8 b8 e8
    e8. d16 cis2. 
}

hook_vocal = \relative c' {
    \key b \major
    r4 dis8 cis16 dis16~4 r8 cis16 dis16
    dis8 fis8 gis16 fis8 dis16~8 cis8 r4
    r4 b'8 ais16 dis,16~8 r8 b'8 ais16 fis16~
    fis8 gis8~8 dis8 dis8. cis16 cis4 

    r4 dis8 cis16 dis16~4 r8 cis16 dis16
    dis8 fis8 gis16 fis8 dis16~8 cis8 r4
    r4 b'8 ais16 dis,16~8 r8 b'8 ais16 cis16~
    cis8 gis8~8 dis8 fis8 gis8 ais8. b16 
}

hookafter_vocal = \relative c' {
    gis'4. fis16 e16 dis2
    r4 cis4 b4 ais4
    b2.. ais16 b16 
    cis2. r4
    \key d \major
    r4 d16 cis16 d8~4 r4
    r4 e16 d16 e8~4 r8 d16 e16
    fis8. b,16 b4. ais8 b8 fis'8
    fis2 e2
}