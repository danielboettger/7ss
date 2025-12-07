\version "2.18.2"

\header {
    title = "Kinder dieser Galaxie"
    copyright = "CC0"
}
\score{
\relative c' {

    \new ChoirStaff {
        <<
        \new Staff {
            \clef treble
            \key g \major  
            \partial 4 

            g'8( b8) | 
            d4. e8 d4 c |
            b a g g |
            c4. d8 e4 c |
            d2 r4 g,8( b8) |
            d4. e8 d4 c |
            b a g g |
            a a d, d |
            g2 r4 g4 |
            e'4. d8 e4 c4 |
            d b g g |
            e'4. fis8 g4 e4 |
            fis2 r4 g,8( b8) |
            d4. e8 d4 c |
            b a g g |
            a4. a8 d4 fis,4 |
            g2.

            \bar "|."
        }

        \addlyrics {
            \partial 4

            Jetzt |
            sin -- gen wir ge -- |
            mein -- sam was und |
            fei -- ern die -- sen |
            Tag, den |
            wir uns teiln mit |
            al -- lem das auf |
            Er -- den le -- ben |
           mag. Die |
            Er -- de hü -- tet |
            und er -- hält das |
            Le -- ben das hier |
            singt in |
            uns, den Kin -- dern |
            die -- ser Welt wo |
            un -- ser Lied er -- |
            klingt.

        }

        \new Staff {
            \clef treble
            \key g \major  
            \partial 4 

            d4 |
            g4. g8 g4 a8 g8 |
            fis4 e d d |
            g4. g8 g4 a |
            a2 r4 d4 |
            g4. g8 g4 a8 g8 |
            fis4 e d d |
            e d8 c8 a4 d4 |
            d2 r4 g4 |
            d4 c'8 b8 a4 g |
            a fis d g |
            g,4 c4 b g |
            b2 r4 d,4 |
            g4. g8 g4 a8 g |
            fis4 e d d |
            e4. c8 d4 d4 |
            d2.

            \bar "|."
        }

        \addlyrics {
            \partial 4

            Jetzt __ |
            sin -- gen wir ge -- _ |
            mein -- sam was und |
            fei -- ern -- die -- den |
            Tag, den __ |
            wir uns teiln mit _ |
            al -- lem das auf |
            Er -- den le -- ben |
            mag. Die |
            Er -- de hü -- tet |
            und er -- hält das |
            Le -- ben das hier |
            singt in |
            uns, den Kin -- dern _ |
            die -- ser Welt wo |
            un -- ser Lied er -- |
            klingt.

        }

        \new Staff {
            \clef bass
            \key g \major
            \partial 4

            b4 |
            b4. c8 d4 e4 |
            d g,4 d'4 c8 b8 |
            c4. b8 c4 e4 |
            fis2 r4 b,4 |
            b4. c8 d4 e |
            d a d g,4 |
            c b8 a fis4 a |
            b2 r4 d4 |
            c4. d8 c4 c |
            a4 b8 c8 d4 d4 |
            c4. a8 e'4 e |
            dis2 r4 b4 |
            b4. c8 d4 e |
            d a d g,4 |
            c8 b a4 b a |
            b2.

            \bar "|."
        }

        \addlyrics {
            \partial 4

            Jetzt __ |
            sin -- gen wir ge -- |
            mein -- sam was und _ |
            fei -- ern die -- sen |
            Tag, den __ |
            wir uns teiln mit |
            al -- lem das auf |
            Er -- den le -- ben |
            mag. Die|
            Er -- de hü -- tet |
            und er -- hält das |
            Le -- ben das hier |
            singt in |
            uns, den Kin -- dern |
            die -- ser Welt wo |
            un -- ser Lied er -- |
            klingt.

        }
        
        \new Staff {
            \clef bass
            \key g \major
            \partial 4

            g,4 |
            g4. c8 b4 a |
            d c b g |
            e'4. d8 c4 a4 |
            d2 r4 b4 |
            g4. c8 b4 a |
            d c b b |
            a b8 c d4 fis,4 |
            g2 r4 b4 |
            a4. b8 c4 e |
            fis4 d b b |
            c4. d8 e4 e |
            b2 r4 g4 |
            g4. c8 b4 a |
            d c b b |
            a8 b c e d4 d |
            g,2.

            \bar "|."
        }

        \addlyrics {
            \partial 4

            Jetzt __  |
            sin -- gen wir ge -- |
            mein -- sam was und |
            fei -- ern die -- sen |
            Tag, den __ |
            wir uns teiln mit |
            al -- lem das auf |
            Er -- den le -- ben |
            mag. Die |
            Er -- de hü -- tet |
            und er -- hält das |
            Le -- ben das hier |
            singt in |
            uns, den Kin -- dern |
            die -- ser Welt wo |
            un -- ser Lied er -- |
            klingt.

        }
        


        >>
        

    }

}
}

\markup {
    \column {
        \line{ 2. }
        \line{ Doch ist die Welt ein Körnchen Staub,}
        \line{ ein blauer Satellit}
        \line{ der Sonne die all das erlaubt}
        \line{ was auf der Welt geschieht.}
        \line{ Sie schenkt die Kraft in uns hinein,}
        \line{ die Kraft die in uns singt,}
        \line{ uns Kindern dieses Sonnenscheins }
        \line{ wo unser Lied erklingt. }
    }
    \column {
        \line{ 3. }
        \line{ Und viele and’re Sonnen die }
        \line{ bei Nacht am Himmel stehen}
        \line{ sind unsre Heimatgalaxie  }
        \line{ von innen raus gesehen.}
        \line{ Die Sterne schmieden Teilchen wie }
        \line{ den Staub der in uns singt,}
        \line{ uns Kindern dieser Galaxie}
        \line{ wo unser Lied erklingt. }
    }
    \column {
        \line{ 4. }
        \line{ Aus Sternenstaub gemacht sind wir }
        \line{ und so ist in uns drin }
        \line{der Kosmos in uns allen hier,  }
        \line{ wie wir in ihm drin sind. }
        \line{ Aus abgrundtiefer Ewigkeit }
        \line{ erwacht der Staub und singt,}
        \line{ in Kindern der Unendlichkeit }
        \line{ wo unser Lied erklingt. }
    }
}

% vim: ai ts=4 sts=4 sw=4 expandtab
	
