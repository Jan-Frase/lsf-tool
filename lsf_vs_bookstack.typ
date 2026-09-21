#set page(height: auto, margin: 2em, width: 40cm)
            #outline(depth: 2)
            #show table.cell.where(y: 0): strong
            #set table(
              stroke: (x, y) => if y == 0 {
                (top: 1pt, bottom: 0.7pt)
              } else if y > 1 {
                (top: 0pt, bottom: 1pt)
              },
              align: (x, y) => (
                if x > 0 { left }
                else { left }
              ),
              fill: (_, y) => if calc.odd(y) { rgb("#B0CED9") },
            )

            #let status(ok) = box(
              fill: if ok { rgb("#d4edda") } else { rgb("#f8d7da") },
              inset: 4pt,
              radius: 3pt,
              text(fill: if ok { rgb("#155724") } else { rgb("#721c24") }, weight: "bold")[
                #if ok { text(fill: green, size: 1em)[✔] } else { text(fill: red,   size: 1.2em)[✘] }
              ],
            )
            #pagebreak()
            
= Pairs
#pagebreak()
== AMS Lab Projects
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Interdisziplinäres Team-Projekt, Fachliche Spezialisierung, Digital Engineering-Projekt, Digital Engineering (SPO 2027), Engineering Specialization (SPO 2027), Schlüssel- und Methodenkompetenz (SPO 2027), Projekte (SPO 2027), ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Applied Data Science, Projects (SPO 2027), ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, Schlüssel- und Methodenkompetenzen, Informatik Wahlpflicht (SPO 2027), Schlüssel- und Methodenkompetenz (SPO 2027), Projekte (SPO 2027), ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, Ingenieurinformatik, Schlüssel- und Methodenkompetenzen, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, Schlüssel- und Methodenkompetenzen, Computer Science (SPO 2027), Schlüssel- und Methodenkompetenz (SPO 2027), ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, Schlüssel- und Methodenkompetenzen, Informatik Wahlpflicht (SPO 2027), Schlüssel- und Methodenkompetenz (SPO 2027), Projekte (SPO 2027), ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Interdisziplinäres Teamprojekt, Digital Engineering-Projekt, ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Applied Data Science, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Informatik, Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Bereich Informatik, Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt, ],
[M          | VC             ], [Visual Computing - Master (VC;M)], [Key and Methodological Competencies (SMK), ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Schwerpunkt Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt, ],
)
=== Comparision
#table(columns: 4, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [LSF-0], ),
[M          | DIGIENG        ], [Interdisziplinäres Teamprojekt], [#status(false)],[#status(true)],
[],[Digital Engineering-Projekt], [#status(false)],[#status(true)],[M          | INF            ], [Projekte (SPO 2027)], [#status(true)],[#status(false)],
[],[Informatik], [#status(true)],[#status(true)],
[],[Schlüssel- und Methodenkompetenz (SPO 2027)], [#status(true)],[#status(false)],
[],[Schlüssel- und Methodenkompetenzen], [#status(true)],[#status(false)],
[],[Informatik Wahlpflicht (SPO 2027)], [#status(true)],[#status(false)],
[],[Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt], [#status(false)],[#status(true)],[M          | CV             ], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt], [#status(false)],[#status(true)],[M          | INGINF         ], [Ingenieurinformatik], [#status(true)],[#status(false)],
[],[Bereich Informatik], [#status(false)],[#status(true)],
[],[Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt], [#status(false)],[#status(true)],
[],[Schlüssel- und Methodenkompetenzen], [#status(true)],[#status(false)],
[],[Informatik], [#status(true)],[#status(false)],[M          | DE             ], [Engineering Specialization (SPO 2027)], [#status(true)],[#status(false)],
[],[Digital Engineering (SPO 2027)], [#status(true)],[#status(false)],
[],[Digital Engineering-Projekt], [#status(true)],[#status(false)],
[],[Schlüssel- und Methodenkompetenz (SPO 2027)], [#status(true)],[#status(false)],
[],[Fachliche Spezialisierung], [#status(true)],[#status(false)],
[],[Interdisziplinäres Team-Projekt], [#status(true)],[#status(false)],
[],[Projekte (SPO 2027)], [#status(true)],[#status(false)],[M          | DKE            ], [Projects (SPO 2027)], [#status(true)],[#status(false)],
[],[Applied Data Science], [#status(true)],[#status(true)],[M          | WIF            ], [Informatik Wahlpflicht (SPO 2027)], [#status(true)],[#status(false)],
[],[Projekte (SPO 2027)], [#status(true)],[#status(false)],
[],[Schwerpunkt Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt], [#status(false)],[#status(true)],
[],[Schlüssel- und Methodenkompetenzen], [#status(true)],[#status(false)],
[],[Schlüssel- und Methodenkompetenz (SPO 2027)], [#status(true)],[#status(false)],
[],[Informatik], [#status(true)],[#status(false)],[M          | VC             ], [Schlüssel- und Methodenkompetenzen], [#status(true)],[#status(false)],
[],[Key and Methodological Competencies (SMK)], [#status(false)],[#status(true)],
[],[Schlüssel- und Methodenkompetenz (SPO 2027)], [#status(true)],[#status(false)],
[],[Computer Science (SPO 2027)], [#status(true)],[#status(false)],
[],[Computer Science], [#status(true)],[#status(false)],)

#pagebreak()
== Advanced Database Models
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Methoden der Informatik, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Data Processing for Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Informatik, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Methoden der Informatik, ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Data Processing for Data Science, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Informatik, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Bereich Informatik, ],
[M          | VC             ], [Visual Computing - Master (VC;M)], [General Computer Science, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Katalog INF, ],
[M - ALT    | DKE            ], [Data & Knowledge Engineering - Master (DKE;M - alt)], [Models, ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Informatik, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Methoden der Informatik, ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Data Processing for Data Science, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Informatik, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Bereich Informatik, ],
[M          | VC             ], [Visual Computing - Master (VC;M)], [General Computer Science, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Katalog INF, ],
[M - ALT    | DKE            ], [Data & Knowledge Engineering - Master (DKE;M - alt)], [Models, ],
)
=== Comparision
#table(columns: 5, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [LSF-0], [LSF-1], ),
[M          | INF            ], [Informatik], [#status(true)],[#status(true)],[#status(true)],[M - ALT    | DKE            ], [Models], [#status(false)],[#status(true)],[#status(true)],[M          | CV             ], [Informatik], [#status(false)],[#status(true)],[#status(true)],[M          | WIF            ], [Katalog INF], [#status(false)],[#status(true)],[#status(true)],
[],[Informatik], [#status(true)],[#status(false)],[#status(false)],[M          | DIGIENG        ], [Methoden der Informatik], [#status(false)],[#status(true)],[#status(true)],[M          | DKE            ], [Data Processing for Data Science], [#status(true)],[#status(true)],[#status(true)],[M          | INGINF         ], [Informatik], [#status(true)],[#status(false)],[#status(false)],
[],[Bereich Informatik], [#status(false)],[#status(true)],[#status(true)],[M          | DE             ], [Methoden der Informatik], [#status(true)],[#status(false)],[#status(false)],[M          | VC             ], [Computer Science], [#status(true)],[#status(false)],[#status(false)],
[],[General Computer Science], [#status(false)],[#status(true)],[#status(true)],)

#pagebreak()
== Advanced Topics in Databases
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Methoden der Informatik, Fachliche Spezialisierung, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Data Processing for Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Informatik, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Methoden der Informatik, Fachliche Spezialisierung, ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Data Processing for Data Science, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Informatik, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Bereich Informatik, ],
[M          | VC             ], [Visual Computing - Master (VC;M)], [General Computer Science, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Katalog INF, ],
[M - ALT    | DKE            ], [Data & Knowledge Engineering - Master (DKE;M - alt)], [Methods II (Data Management), ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Informatik, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Methoden der Informatik, Fachliche Spezialisierung, ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Data Processing for Data Science, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Informatik, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Bereich Informatik, ],
[M          | VC             ], [Visual Computing - Master (VC;M)], [General Computer Science, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Katalog INF, ],
[M - ALT    | DKE            ], [Data & Knowledge Engineering - Master (DKE;M - alt)], [Methods II (Data Management), ],
)
=== Comparision
#table(columns: 5, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [LSF-0], [LSF-1], ),
[M          | DE             ], [Fachliche Spezialisierung], [#status(true)],[#status(false)],[#status(false)],
[],[Methoden der Informatik], [#status(true)],[#status(false)],[#status(false)],[M          | INGINF         ], [Informatik], [#status(true)],[#status(false)],[#status(false)],
[],[Bereich Informatik], [#status(false)],[#status(true)],[#status(true)],[M          | CV             ], [Informatik], [#status(false)],[#status(true)],[#status(true)],[M          | INF            ], [Informatik], [#status(true)],[#status(true)],[#status(true)],[M          | VC             ], [General Computer Science], [#status(false)],[#status(true)],[#status(true)],
[],[Computer Science], [#status(true)],[#status(false)],[#status(false)],[M          | DIGIENG        ], [Fachliche Spezialisierung], [#status(false)],[#status(true)],[#status(true)],
[],[Methoden der Informatik], [#status(false)],[#status(true)],[#status(true)],[M          | DKE            ], [Data Processing for Data Science], [#status(true)],[#status(true)],[#status(true)],[M          | WIF            ], [Katalog INF], [#status(false)],[#status(true)],[#status(true)],
[],[Informatik], [#status(true)],[#status(false)],[#status(false)],[M - ALT    | DKE            ], [Methods II (Data Management)], [#status(false)],[#status(true)],[#status(true)],)

#pagebreak()
== Algorithmen und Datenstrukturen
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik I - Pflicht, Kernmodule (SPO 2027), ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik I - Pflicht, Kernmodule (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik I - Pflicht, Kernmodule (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik I - Pflicht, Kernmodule (SPO 2027), ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten - Pflicht, Kernmodule (SPO 2027), ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik I - Pflicht, Kernmodule (SPO 2027), ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik und Mathematik (Kern- und Pflichtbereich) → 2. Semester, Informatik und Mathematik (Kern- und Pflichtbereich) → 2. Semester, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatik und Mathematik (Kern- und Pflichtbereich) → 2. Semester, Informatik und Mathematik (Kern- und Pflichtbereich) → 2. Semester, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Informatik und Mathematik (Kern- und Pflichtbereich) → 2. Semester, Informatik und Mathematik (Kern- und Pflichtbereich) → 2. Semester, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten (Pflichtbereich) → 2. Semester, Gestalten (Pflichtbereich) → 2. Semester, ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik und Mathematik (Kern- und Pflichtbereich) → 2. Semester, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatik und Mathematik (Kern- und Pflichtbereich) → 2. Semester, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Informatik und Mathematik (Kern- und Pflichtbereich) → 2. Semester, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten (Pflichtbereich) → 2. Semester, ],
)
=== Comparision
#table(columns: 6, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [NextCloud-1], [LSF-0], [LSF-1], ),
[B          | INGINF         ], [Kernmodule (SPO 2027)], [#status(true)],[#status(false)],[#status(false)],[#status(false)],
[],[Informatik I - Pflicht], [#status(true)],[#status(false)],[#status(false)],[#status(false)],
[],[Informatik und Mathematik (Kern- und Pflichtbereich) → 2. Semester], [#status(false)],[#status(false)],[#status(true)],[#status(true)],[B          | WIF            ], [Gestalten - Pflicht], [#status(true)],[#status(false)],[#status(false)],[#status(false)],
[],[Gestalten (Pflichtbereich) → 2. Semester], [#status(false)],[#status(false)],[#status(true)],[#status(true)],
[],[Kernmodule (SPO 2027)], [#status(true)],[#status(false)],[#status(false)],[#status(false)],[B          | CV             ], [Informatik und Mathematik (Kern- und Pflichtbereich) → 2. Semester], [#status(false)],[#status(false)],[#status(true)],[#status(true)],
[],[Informatik I - Pflicht], [#status(true)],[#status(false)],[#status(false)],[#status(false)],
[],[Kernmodule (SPO 2027)], [#status(true)],[#status(false)],[#status(false)],[#status(false)],[B          | INF            ], [Informatik I - Pflicht], [#status(true)],[#status(false)],[#status(false)],[#status(false)],
[],[Kernmodule (SPO 2027)], [#status(true)],[#status(false)],[#status(false)],[#status(false)],
[],[Informatik und Mathematik (Kern- und Pflichtbereich) → 2. Semester], [#status(false)],[#status(false)],[#status(true)],[#status(true)],[B          | INF (BILINGUAL)], [Kernmodule (SPO 2027)], [#status(true)],[#status(true)],[#status(false)],[#status(false)],
[],[Informatik I - Pflicht], [#status(true)],[#status(true)],[#status(false)],[#status(false)],)

#pagebreak()
== Anwendungssysteme
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Anwenden - Pflicht, ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikvertiefung, Informatikprofile → Webgründer, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Anwenden (Pflichtbereich) → 2. Semester, ],
)
=== Comparision
#table(columns: 4, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [LSF-0], ),
[B          | WIF            ], [Anwenden (Pflichtbereich) → 2. Semester], [#status(false)],[#status(true)],
[],[Anwenden - Pflicht], [#status(true)],[#status(false)],[B          | INF            ], [Informatikvertiefung], [#status(false)],[#status(true)],
[],[Informatik - Wahlpflicht], [#status(true)],[#status(false)],
[],[Informatikprofile → Webgründer], [#status(false)],[#status(true)],[B          | INGINF         ], [Bereich Informatik], [#status(false)],[#status(true)],
[],[Informatik - Wahlpflicht], [#status(true)],[#status(false)],[B          | CV             ], [Informatik], [#status(false)],[#status(true)],
[],[Informatik - Wahlpflicht], [#status(true)],[#status(false)],[B          | INF (BILINGUAL)], [Informatik - Wahlpflicht], [#status(true)],[#status(false)],)

#pagebreak()
== Assistenzrobotik
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Methoden des Digital Engineering, Methoden der Informatik, Fachliche Spezialisierung, Informatik Wahlpflicht (SPO 2027), Digital Engineering (SPO 2027), Engineering Specialization (SPO 2027), ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Applied Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, Informatik Wahlpflicht (SPO 2027), ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Methoden des Digital Engineering, Methoden der Informatik, Fachliche Spezialisierung, ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Applied Data Science, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Informatik, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Bereich Informatik, Bereich Ingenieurinformatik, ],
[M - ALT    | DKE            ], [Data & Knowledge Engineering - Master (DKE;M - alt)], [Applications, ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Methoden des Digital Engineering, Methoden der Informatik, Fachliche Spezialisierung, ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Applied Data Science, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Informatik, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Bereich Informatik, Bereich Ingenieurinformatik, ],
[M - ALT    | DKE            ], [Data & Knowledge Engineering - Master (DKE;M - alt)], [Applications, ],
)
=== Comparision
#table(columns: 5, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [LSF-0], [LSF-1], ),
[M          | DKE            ], [Applied Data Science], [#status(true)],[#status(true)],[#status(true)],[M          | DE             ], [Methoden der Informatik], [#status(true)],[#status(false)],[#status(false)],
[],[Informatik Wahlpflicht (SPO 2027)], [#status(true)],[#status(false)],[#status(false)],
[],[Engineering Specialization (SPO 2027)], [#status(true)],[#status(false)],[#status(false)],
[],[Methoden des Digital Engineering], [#status(true)],[#status(false)],[#status(false)],
[],[Fachliche Spezialisierung], [#status(true)],[#status(false)],[#status(false)],
[],[Digital Engineering (SPO 2027)], [#status(true)],[#status(false)],[#status(false)],[M          | INF            ], [Informatik], [#status(true)],[#status(true)],[#status(true)],
[],[Informatik Wahlpflicht (SPO 2027)], [#status(true)],[#status(false)],[#status(false)],[M          | INGINF         ], [Bereich Informatik], [#status(false)],[#status(true)],[#status(true)],
[],[Informatik], [#status(true)],[#status(false)],[#status(false)],
[],[Bereich Ingenieurinformatik], [#status(false)],[#status(true)],[#status(true)],[M - ALT    | DKE            ], [Applications], [#status(false)],[#status(true)],[#status(true)],[M          | DIGIENG        ], [Methoden des Digital Engineering], [#status(false)],[#status(true)],[#status(true)],
[],[Fachliche Spezialisierung], [#status(false)],[#status(true)],[#status(true)],
[],[Methoden der Informatik], [#status(false)],[#status(true)],[#status(true)],)

#pagebreak()
== Bachelorseminar KMD
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, Studienprofil: Künstliche Intelligenz, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Verstehen und Gestalten - Wahlpflicht, Gestalten und Anwenden - Wahlpflicht, ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | BIBA-INF D     ], [Bilinguale Informatik, Deutsche Verlaufsvariante (BiBa-Inf D;B)], [Informatik, Schlüssel- und Methodenkompetenz, ],
[B          | BIBA-INF E     ], [Bilinguale Informatik, Englische Verlaufsvariante (BiBa-Inf E;B)], [Informatik, Schlüssel- und Methodenkompetenz, ],
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik, Schlüssel- und Methodenkompetenz, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Schlüssel- und Methodenkompetenz, Informatikprofile, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, Schlüssel- und Methodenkompetenz, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Verstehen und Gestalten (Wahlpflichtbereich), Gestalten und Anwenden (Wahlpflichtbereich), Schlüssel- und Methodenkompetenz, ],
)
=== Comparision
#table(columns: 4, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [LSF-0], ),
[B          | WIF            ], [Schlüssel- und Methodenkompetenz], [#status(false)],[#status(true)],
[],[Gestalten und Anwenden (Wahlpflichtbereich)], [#status(false)],[#status(true)],
[],[Verstehen und Gestalten (Wahlpflichtbereich)], [#status(false)],[#status(true)],
[],[Verstehen und Gestalten - Wahlpflicht], [#status(true)],[#status(false)],
[],[Gestalten und Anwenden - Wahlpflicht], [#status(true)],[#status(false)],[B          | INF (BILINGUAL)], [Informatik - Wahlpflicht], [#status(true)],[#status(false)],[B          | INGINF         ], [Informatik - Wahlpflicht], [#status(true)],[#status(false)],
[],[Bereich Informatik], [#status(false)],[#status(true)],
[],[Schlüssel- und Methodenkompetenz], [#status(false)],[#status(true)],[B          | CV             ], [Informatik - Wahlpflicht], [#status(true)],[#status(false)],
[],[Informatik], [#status(false)],[#status(true)],
[],[Schlüssel- und Methodenkompetenz], [#status(false)],[#status(true)],[B          | INF            ], [Informatikprofile], [#status(false)],[#status(true)],
[],[Schlüssel- und Methodenkompetenz], [#status(false)],[#status(true)],
[],[Informatik - Wahlpflicht], [#status(true)],[#status(false)],
[],[Studienprofil: Künstliche Intelligenz], [#status(true)],[#status(false)],[B          | BIBA-INF E     ], [Informatik], [#status(false)],[#status(true)],
[],[Schlüssel- und Methodenkompetenz], [#status(false)],[#status(true)],[B          | BIBA-INF D     ], [Schlüssel- und Methodenkompetenz], [#status(false)],[#status(true)],
[],[Informatik], [#status(false)],[#status(true)],)

#pagebreak()
== Bioinformatik
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik, Anwendungsfach → Biologie, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikvertiefung, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich), ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Applied Data Science, ],
[M - ALT    | DKE            ], [Data & Knowledge Engineering - Master (DKE;M - alt)], [Applications, ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik, Anwendungsfach → Biologie, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikvertiefung, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich), ],
)
=== Comparision
#table(columns: 5, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [LSF-0], [LSF-1], ),
[M          | DKE            ], [Applied Data Science], [#status(false)],[#status(true)],[#status(false)],[B          | INF            ], [Informatik - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],
[],[Informatikvertiefung], [#status(false)],[#status(true)],[#status(true)],[M - ALT    | DKE            ], [Applications], [#status(false)],[#status(true)],[#status(false)],[B          | INGINF         ], [Informatik - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],
[],[Bereich Informatik], [#status(false)],[#status(true)],[#status(true)],[B          | INF (BILINGUAL)], [Informatik - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],[B          | WIF            ], [Gestalten und Anwenden (Wahlpflichtbereich)], [#status(false)],[#status(true)],[#status(true)],
[],[Gestalten und Anwenden - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],[B          | CV             ], [Informatik], [#status(false)],[#status(true)],[#status(true)],
[],[Anwendungsfach → Biologie], [#status(false)],[#status(true)],[#status(true)],
[],[Informatik - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],)

#pagebreak()
== Cloud School
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Verstehen und Gestalten - Wahlpflicht, ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikvertiefung, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Verstehen und Gestalten (Wahlpflichtbereich), ],
)
=== Comparision
#table(columns: 4, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [LSF-0], ),
[B          | CV             ], [Informatik - Wahlpflicht], [#status(true)],[#status(false)],
[],[Informatik], [#status(false)],[#status(true)],[B          | WIF            ], [Verstehen und Gestalten - Wahlpflicht], [#status(true)],[#status(false)],
[],[Verstehen und Gestalten (Wahlpflichtbereich)], [#status(false)],[#status(true)],[B          | INF            ], [Informatikvertiefung], [#status(false)],[#status(true)],
[],[Informatik - Wahlpflicht], [#status(true)],[#status(false)],[B          | INGINF         ], [Bereich Informatik], [#status(false)],[#status(true)],
[],[Informatik - Wahlpflicht], [#status(true)],[#status(false)],[B          | INF (BILINGUAL)], [Informatik - Wahlpflicht], [#status(true)],[#status(false)],)

#pagebreak()
== Computernetze 2
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, Studienprofil: Forensik Design, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | BIBA-INF D     ], [Bilinguale Informatik, Deutsche Verlaufsvariante (BiBa-Inf D;B)], [Informatik, ],
[B          | BIBA-INF E     ], [Bilinguale Informatik, Englische Verlaufsvariante (BiBa-Inf E;B)], [Informatik, ],
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Technische Informatik, Informatikvertiefung, Informatikprofile → ForensikDesign\@Informatik → Katalog B: Grundlegende IT-Methoden - Methoden der Sicherheit, Forensik und erforderlicher IT-Technik, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Technische Informatik, Bereich Informatik, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich), ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | BIBA-INF D     ], [Bilinguale Informatik, Deutsche Verlaufsvariante (BiBa-Inf D;B)], [Informatik, ],
[B          | BIBA-INF E     ], [Bilinguale Informatik, Englische Verlaufsvariante (BiBa-Inf E;B)], [Informatik, ],
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Technische Informatik, Informatikvertiefung, Informatikprofile → ForensikDesign\@Informatik → Katalog B: Grundlegende IT-Methoden - Methoden der Sicherheit, Forensik und erforderlicher IT-Technik, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Technische Informatik, Bereich Informatik, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich), ],
)
=== Comparision
#table(columns: 5, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [LSF-0], [LSF-1], ),
[B          | WIF            ], [Gestalten und Anwenden (Wahlpflichtbereich)], [#status(false)],[#status(true)],[#status(true)],
[],[Gestalten und Anwenden - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],[B          | CV             ], [Informatik], [#status(false)],[#status(true)],[#status(true)],
[],[Informatik - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],[B          | INGINF         ], [Bereich Informatik], [#status(false)],[#status(true)],[#status(true)],
[],[Technische Informatik], [#status(false)],[#status(true)],[#status(true)],
[],[Informatik - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],[B          | BIBA-INF D     ], [Informatik], [#status(false)],[#status(true)],[#status(true)],[B          | INF (BILINGUAL)], [Informatik - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],[B          | INF            ], [Technische Informatik], [#status(false)],[#status(true)],[#status(true)],
[],[Studienprofil: Forensik Design], [#status(true)],[#status(false)],[#status(false)],
[],[Informatikvertiefung], [#status(false)],[#status(true)],[#status(true)],
[],[Informatikprofile → ForensikDesign\@Informatik → Katalog B: Grundlegende IT-Methoden - Methoden der Sicherheit, Forensik und erforderlicher IT-Technik], [#status(false)],[#status(true)],[#status(true)],
[],[Informatik - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],[B          | BIBA-INF E     ], [Informatik], [#status(false)],[#status(true)],[#status(true)],)

#pagebreak()
== Current Topics in Business Informatics Research
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Schlüssel- und Methodenkompetenzen, Wissenschaftliches Seminar, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Schlüssel- und Methodenkompetenzen, Wissenschaftliches Seminar, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Schlüssel- und Methodenkompetenzen, Wissenschaftliches Seminar, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, Wissenschaftliches Seminar, ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | BIBA-INF D     ], [Bilinguale Informatik, Deutsche Verlaufsvariante (BiBa-Inf D;B)], [Schlüssel- und Methodenkompetenz, ],
[B          | BIBA-INF E     ], [Bilinguale Informatik, Englische Verlaufsvariante (BiBa-Inf E;B)], [Schlüssel- und Methodenkompetenz, ],
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Seminar, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Seminar, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich), ],
)
=== Comparision
#table(columns: 4, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [LSF-0], ),
[B          | INGINF         ], [Schlüssel- und Methodenkompetenzen], [#status(true)],[#status(false)],
[],[Wissenschaftliches Seminar], [#status(true)],[#status(false)],[B          | WIF            ], [Gestalten und Anwenden - Wahlpflicht], [#status(true)],[#status(false)],
[],[Gestalten und Anwenden (Wahlpflichtbereich)], [#status(false)],[#status(true)],
[],[Wissenschaftliches Seminar], [#status(true)],[#status(false)],[B          | BIBA-INF D     ], [Schlüssel- und Methodenkompetenz], [#status(false)],[#status(true)],[B          | BIBA-INF E     ], [Schlüssel- und Methodenkompetenz], [#status(false)],[#status(true)],[B          | INF            ], [Schlüssel- und Methodenkompetenzen], [#status(true)],[#status(false)],
[],[Schlüssel- und Methodenkompetenz → Wissenschaftliches Seminar], [#status(false)],[#status(true)],
[],[Wissenschaftliches Seminar], [#status(true)],[#status(false)],[B          | CV             ], [Schlüssel- und Methodenkompetenzen], [#status(true)],[#status(false)],
[],[Wissenschaftliches Seminar], [#status(true)],[#status(false)],
[],[Schlüssel- und Methodenkompetenz → Wissenschaftliches Seminar], [#status(false)],[#status(true)],)

#pagebreak()
== Data Mining I - Introduction to Data Mining
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Methoden der Informatik, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Fundamentals of Data Science, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Methoden der Informatik, ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Fundamentals of Data Science, ],
[M          | VC             ], [Visual Computing - Master (VC;M)], [General Computer Science, ],
[M - ALT    | DKE            ], [Data & Knowledge Engineering - Master (DKE;M - alt)], [Fundamentals, ],
)
=== Comparision
#table(columns: 5, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [LSF-0], [LSF-1], ),
[M          | DIGIENG        ], [Methoden der Informatik], [#status(false)],[#status(false)],[#status(true)],[M          | DKE            ], [Fundamentals of Data Science], [#status(true)],[#status(false)],[#status(true)],[M          | DE             ], [Methoden der Informatik], [#status(true)],[#status(false)],[#status(false)],[M          | VC             ], [General Computer Science], [#status(false)],[#status(false)],[#status(true)],
[],[Computer Science], [#status(true)],[#status(false)],[#status(false)],[M - ALT    | DKE            ], [Fundamentals], [#status(false)],[#status(false)],[#status(true)],)

#pagebreak()
== Data and Knowledge Engineering
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Fundamentals of Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Schlüssel- und Methodenkompetenzen, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Schlüssel- und Methodenkompetenzen, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Schlüssel- und Methodenkompetenzen, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Schlüssel- und Methodenkompetenzen, ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Informatik, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Methoden der Informatik, ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Learning Methods & Models for Data Science, Applied Data Science, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Informatik, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Bereich Informatik, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Katalog INF, ],
[M - ALT    | DKE            ], [Data & Knowledge Engineering - Master (DKE;M - alt)], [Applications, ],
)
=== Comparision
#table(columns: 4, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [LSF-0], ),
[M          | DIGIENG        ], [Methoden der Informatik], [#status(false)],[#status(true)],[M          | INF            ], [Informatik], [#status(false)],[#status(true)],
[],[Schlüssel- und Methodenkompetenzen], [#status(true)],[#status(false)],[M - ALT    | DKE            ], [Applications], [#status(false)],[#status(true)],[M          | INGINF         ], [Schlüssel- und Methodenkompetenzen], [#status(true)],[#status(false)],
[],[Bereich Informatik], [#status(false)],[#status(true)],[M          | DKE            ], [Applied Data Science], [#status(false)],[#status(true)],
[],[Fundamentals of Data Science], [#status(true)],[#status(false)],
[],[Learning Methods & Models for Data Science], [#status(false)],[#status(true)],[M          | WIF            ], [Katalog INF], [#status(false)],[#status(true)],
[],[Schlüssel- und Methodenkompetenzen], [#status(true)],[#status(false)],[M          | VC             ], [Schlüssel- und Methodenkompetenzen], [#status(true)],[#status(false)],[M          | CV             ], [Informatik], [#status(false)],[#status(true)],)

#pagebreak()
== Datenanalyse, Visualisierung und Visual Analytics
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Computervisualistik - Wahlpflicht, Computervisualistik Wahlpflicht (SPO 2027), ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Computervisualistik, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikvertiefung, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich), ],
)
=== Comparision
#table(columns: 4, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [LSF-0], ),
[B          | WIF            ], [Informatik Wahlpflicht (SPO 2027)], [#status(true)],[#status(false)],
[],[Gestalten und Anwenden (Wahlpflichtbereich)], [#status(false)],[#status(true)],
[],[Gestalten und Anwenden - Wahlpflicht], [#status(true)],[#status(false)],[B          | INF (BILINGUAL)], [Informatik Wahlpflicht (SPO 2027)], [#status(true)],[#status(false)],
[],[Informatik - Wahlpflicht], [#status(true)],[#status(false)],[B          | INGINF         ], [Informatik - Wahlpflicht], [#status(true)],[#status(false)],
[],[Informatik Wahlpflicht (SPO 2027)], [#status(true)],[#status(false)],[B          | CV             ], [Computervisualistik Wahlpflicht (SPO 2027)], [#status(true)],[#status(false)],
[],[Computervisualistik], [#status(false)],[#status(true)],
[],[Computervisualistik - Wahlpflicht], [#status(true)],[#status(false)],[B          | INF            ], [Informatikvertiefung], [#status(false)],[#status(true)],
[],[Informatik - Wahlpflicht], [#status(true)],[#status(false)],
[],[Informatik Wahlpflicht (SPO 2027)], [#status(true)],[#status(false)],)

#pagebreak()
== Decision Support Project
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, Schlüssel- und Methodenkompetenzen, Informatik Wahlpflicht (SPO 2027), Schlüssel- und Methodenkompetenz (SPO 2027), Projekte (SPO 2027), ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, Schlüssel- und Methodenkompetenzen, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, Schlüssel- und Methodenkompetenzen, Informatik Wahlpflicht (SPO 2027), Schlüssel- und Methodenkompetenz (SPO 2027), Projekte (SPO 2027), ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik, Informatik, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikvertiefung, Informatikvertiefung, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, Bereich Informatik, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich), Gestalten und Anwenden (Wahlpflichtbereich), ],
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Schlüssel- und Methodenkompetenz, Schlüssel- und Methodenkompetenz, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Schlüssel- und Methodenkompetenz, Schlüssel- und Methodenkompetenz, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Schlüssel- und Methodenkompetenz, Schlüssel- und Methodenkompetenz, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Schwerpunkt Schlüssel- und Methodenkompetenz, Schwerpunkt Schlüssel- und Methodenkompetenz, ],
)
=== Comparision
#table(columns: 4, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [LSF-0], ),
[M          | CV             ], [Schlüssel- und Methodenkompetenz], [#status(false)],[#status(true)],[B          | INGINF         ], [Bereich Informatik], [#status(false)],[#status(true)],[M          | INF            ], [Informatik], [#status(true)],[#status(false)],
[],[Schlüssel- und Methodenkompetenzen], [#status(true)],[#status(false)],
[],[Schlüssel- und Methodenkompetenz], [#status(false)],[#status(true)],
[],[Informatik Wahlpflicht (SPO 2027)], [#status(true)],[#status(false)],
[],[Schlüssel- und Methodenkompetenz (SPO 2027)], [#status(true)],[#status(false)],
[],[Projekte (SPO 2027)], [#status(true)],[#status(false)],[B          | INF            ], [Informatikvertiefung], [#status(false)],[#status(true)],[M          | INGINF         ], [Informatik], [#status(true)],[#status(false)],
[],[Schlüssel- und Methodenkompetenz], [#status(false)],[#status(true)],
[],[Schlüssel- und Methodenkompetenzen], [#status(true)],[#status(false)],[M          | WIF            ], [Schwerpunkt Schlüssel- und Methodenkompetenz], [#status(false)],[#status(true)],
[],[Projekte (SPO 2027)], [#status(true)],[#status(false)],
[],[Informatik Wahlpflicht (SPO 2027)], [#status(true)],[#status(false)],
[],[Schlüssel- und Methodenkompetenzen], [#status(true)],[#status(false)],
[],[Informatik], [#status(true)],[#status(false)],
[],[Schlüssel- und Methodenkompetenz (SPO 2027)], [#status(true)],[#status(false)],[B          | CV             ], [Informatik], [#status(false)],[#status(true)],[B          | WIF            ], [Gestalten und Anwenden (Wahlpflichtbereich)], [#status(false)],[#status(true)],)

#pagebreak()
== Deep Learning for Weather and Climate
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Methoden der Informatik, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Applied Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Visual Computing, Computer Science, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikvertiefung, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Verstehen (Pflichtbereich), ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Methoden der Informatik, ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Applied Data Science, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Informatik, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Bereich Informatik, ],
[M          | VC             ], [Visual Computing - Master (VC;M)], [Visual Computing, Key and Methodological Competencies (SMK), ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Katalog INF, ],
)
=== Comparision
#table(columns: 4, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [LSF-0], ),
[M          | INF            ], [Informatik], [#status(true)],[#status(true)],[B          | WIF            ], [Verstehen (Pflichtbereich)], [#status(false)],[#status(true)],[B          | CV             ], [Informatik], [#status(false)],[#status(true)],[M          | DE             ], [Methoden der Informatik], [#status(true)],[#status(false)],[M          | WIF            ], [Katalog INF], [#status(false)],[#status(true)],
[],[Informatik], [#status(true)],[#status(false)],[B          | INF            ], [Informatikvertiefung], [#status(false)],[#status(true)],[M          | VC             ], [Key and Methodological Competencies (SMK)], [#status(false)],[#status(true)],
[],[Visual Computing], [#status(true)],[#status(true)],
[],[Computer Science], [#status(true)],[#status(false)],[B          | INGINF         ], [Bereich Informatik], [#status(false)],[#status(true)],[M          | INGINF         ], [Informatik], [#status(true)],[#status(false)],
[],[Bereich Informatik], [#status(false)],[#status(true)],[M          | DIGIENG        ], [Methoden der Informatik], [#status(false)],[#status(true)],[M          | DKE            ], [Applied Data Science], [#status(true)],[#status(true)],)

#pagebreak()
== Design-Projekt
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Schlüssel- und Methodenkompetenzen, FIN SMK, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Schlüssel- und Methodenkompetenzen, FIN SMK, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Schlüssel- und Methodenkompetenzen, FIN SMK, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, Schlüssel- und Methodenkompetenzen, FIN SMK, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Verstehen und Gestalten - Wahlpflicht, Gestalten und Anwenden - Wahlpflicht, Schlüssel- und Methodenkompetenzen, ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Human Factors, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Applied Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, Schlüssel- und Methodenkompetenzen, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, Schlüssel- und Methodenkompetenzen, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Schlüssel- und Methodenkompetenzen, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Wirtschaftsinformatik, Informatik, ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Schlüssel- und Methodenkompetenz → Wahlbereich Schlüssel- und Methodenkompetenz, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Schlüssel- und Methodenkompetenz → Wahlbereich Schlüssel- und Methodenkompetenz, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Schlüssel- und Methodenkompetenz → Wahlbereich Schlüssel- und Methodenkompetenz, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich) → Wahlpflichtfach FIN Schlüssel- und Methodenkompetenz, ],
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Anwendungen/Geisteswissenschaftliche Grundlagen, Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt, ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Schlüssel- und Methodenkompetenz → Wahlbereich Schlüssel- und Methodenkompetenz, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Schlüssel- und Methodenkompetenz → Wahlbereich Schlüssel- und Methodenkompetenz, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Schlüssel- und Methodenkompetenz → Wahlbereich Schlüssel- und Methodenkompetenz, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich) → Wahlpflichtfach FIN Schlüssel- und Methodenkompetenz, ],
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Anwendungen/Geisteswissenschaftliche Grundlagen, Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt, ],
)
=== Comparision
#table(columns: 6, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [NextCloud-1], [LSF-0], [LSF-1], ),
[M          | VC             ], [Schlüssel- und Methodenkompetenzen], [#status(false)],[#status(true)],[#status(false)],[#status(false)],[M          | DE             ], [Human Factors], [#status(false)],[#status(true)],[#status(false)],[#status(false)],[B          | WIF            ], [Gestalten und Anwenden - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],[#status(false)],
[],[Verstehen und Gestalten - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],[#status(false)],
[],[Gestalten und Anwenden (Wahlpflichtbereich) → Wahlpflichtfach FIN Schlüssel- und Methodenkompetenz], [#status(false)],[#status(false)],[#status(true)],[#status(true)],
[],[Schlüssel- und Methodenkompetenzen], [#status(true)],[#status(false)],[#status(false)],[#status(false)],[B          | INGINF         ], [Schlüssel- und Methodenkompetenzen], [#status(true)],[#status(false)],[#status(false)],[#status(false)],
[],[Schlüssel- und Methodenkompetenz → Wahlbereich Schlüssel- und Methodenkompetenz], [#status(false)],[#status(false)],[#status(true)],[#status(true)],
[],[Informatik - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],[#status(false)],
[],[FIN SMK], [#status(true)],[#status(false)],[#status(false)],[#status(false)],[M          | WIF            ], [Informatik], [#status(false)],[#status(true)],[#status(false)],[#status(false)],
[],[Wirtschaftsinformatik], [#status(false)],[#status(true)],[#status(false)],[#status(false)],[M          | DKE            ], [Applied Data Science], [#status(false)],[#status(true)],[#status(false)],[#status(false)],[B          | INF (BILINGUAL)], [FIN SMK], [#status(true)],[#status(false)],[#status(false)],[#status(false)],
[],[Schlüssel- und Methodenkompetenzen], [#status(true)],[#status(false)],[#status(false)],[#status(false)],[M          | INF            ], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt], [#status(false)],[#status(false)],[#status(true)],[#status(true)],
[],[Informatik], [#status(false)],[#status(true)],[#status(false)],[#status(false)],
[],[Schlüssel- und Methodenkompetenzen], [#status(false)],[#status(true)],[#status(false)],[#status(false)],[B          | INF            ], [FIN SMK], [#status(true)],[#status(false)],[#status(false)],[#status(false)],
[],[Schlüssel- und Methodenkompetenz → Wahlbereich Schlüssel- und Methodenkompetenz], [#status(false)],[#status(false)],[#status(true)],[#status(true)],
[],[Schlüssel- und Methodenkompetenzen], [#status(true)],[#status(false)],[#status(false)],[#status(false)],[M          | INGINF         ], [Schlüssel- und Methodenkompetenzen], [#status(false)],[#status(true)],[#status(false)],[#status(false)],
[],[Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt], [#status(false)],[#status(false)],[#status(true)],[#status(true)],
[],[Informatik], [#status(false)],[#status(true)],[#status(false)],[#status(false)],[M          | CV             ], [Anwendungen/Geisteswissenschaftliche Grundlagen], [#status(false)],[#status(false)],[#status(true)],[#status(true)],
[],[Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt], [#status(false)],[#status(false)],[#status(true)],[#status(true)],[B          | CV             ], [FIN SMK], [#status(true)],[#status(false)],[#status(false)],[#status(false)],
[],[Schlüssel- und Methodenkompetenzen], [#status(true)],[#status(false)],[#status(false)],[#status(false)],
[],[Schlüssel- und Methodenkompetenz → Wahlbereich Schlüssel- und Methodenkompetenz], [#status(false)],[#status(false)],[#status(true)],[#status(true)],)

#pagebreak()
== Einführung in Managementinformationssysteme
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Anwenden - Pflicht, ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikvertiefung, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Anwenden (Pflichtbereich) → 4. Semester, ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Applied Data Science, ],
[M - ALT    | DKE            ], [Data & Knowledge Engineering - Master (DKE;M - alt)], [Applications, ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikvertiefung, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Anwenden (Pflichtbereich) → 4. Semester, ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Applied Data Science, ],
[M - ALT    | DKE            ], [Data & Knowledge Engineering - Master (DKE;M - alt)], [Applications, ],
)
=== Comparision
#table(columns: 5, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [LSF-0], [LSF-1], ),
[M          | DKE            ], [Applied Data Science], [#status(false)],[#status(true)],[#status(true)],[B          | CV             ], [Informatik - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],
[],[Informatik], [#status(false)],[#status(true)],[#status(true)],[B          | WIF            ], [Anwenden - Pflicht], [#status(true)],[#status(false)],[#status(false)],
[],[Anwenden (Pflichtbereich) → 4. Semester], [#status(false)],[#status(true)],[#status(true)],[B          | INF (BILINGUAL)], [Informatik - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],[M - ALT    | DKE            ], [Applications], [#status(false)],[#status(true)],[#status(true)],[B          | INF            ], [Informatikvertiefung], [#status(false)],[#status(true)],[#status(true)],
[],[Informatik - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],[B          | INGINF         ], [Bereich Informatik], [#status(false)],[#status(true)],[#status(true)],
[],[Informatik - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],)

#pagebreak()
== Einführung in die Computergraphik
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Computervisualistik - Pflicht, Computervisualistik Pflicht (SPO 2027), ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik und Mathematik (Kern- und Pflichtbereich) → 2. Semester, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikvertiefung, Informatikprofile → Computer Games → Pflichtbereich, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich), ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Grundlagen Informatik, ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik und Mathematik (Kern- und Pflichtbereich) → 2. Semester, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikvertiefung, Informatikprofile → Computer Games → Pflichtbereich, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich), ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Grundlagen Informatik, ],
)
=== Comparision
#table(columns: 5, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [LSF-0], [LSF-1], ),
[B          | INGINF         ], [Bereich Informatik], [#status(false)],[#status(true)],[#status(true)],
[],[Informatik - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],
[],[Informatik Wahlpflicht (SPO 2027)], [#status(true)],[#status(false)],[#status(false)],[B          | INF            ], [Informatikprofile → Computer Games → Pflichtbereich], [#status(false)],[#status(true)],[#status(true)],
[],[Informatik Wahlpflicht (SPO 2027)], [#status(true)],[#status(false)],[#status(false)],
[],[Informatikvertiefung], [#status(false)],[#status(true)],[#status(true)],
[],[Informatik - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],[B          | CV             ], [Computervisualistik - Pflicht], [#status(true)],[#status(false)],[#status(false)],
[],[Computervisualistik Pflicht (SPO 2027)], [#status(true)],[#status(false)],[#status(false)],
[],[Informatik und Mathematik (Kern- und Pflichtbereich) → 2. Semester], [#status(false)],[#status(true)],[#status(true)],[M          | DIGIENG        ], [Grundlagen Informatik], [#status(false)],[#status(true)],[#status(true)],[B          | WIF            ], [Gestalten und Anwenden - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],
[],[Informatik Wahlpflicht (SPO 2027)], [#status(true)],[#status(false)],[#status(false)],
[],[Gestalten und Anwenden (Wahlpflichtbereich)], [#status(false)],[#status(true)],[#status(true)],[B          | INF (BILINGUAL)], [Informatik - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],
[],[Informatik Wahlpflicht (SPO 2027)], [#status(true)],[#status(false)],[#status(false)],)

#pagebreak()
== Embodied Interfaces in Immersive Spaces
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Visual Computing, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | INF            ], [Informatik - Master (INF;M)], [Informatik, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Bereich Informatik, ],
[M          | VC             ], [Visual Computing - Master (VC;M)], [Visual Computing, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Katalog INF, ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | INF            ], [Informatik - Master (INF;M)], [Informatik, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Bereich Informatik, ],
[M          | VC             ], [Visual Computing - Master (VC;M)], [Visual Computing, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Katalog INF, ],
)
=== Comparision
#table(columns: 5, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [LSF-0], [LSF-1], ),
[M          | VC             ], [Visual Computing], [#status(true)],[#status(true)],[#status(true)],[M          | INGINF         ], [Informatik], [#status(true)],[#status(false)],[#status(false)],
[],[Bereich Informatik], [#status(false)],[#status(true)],[#status(true)],[M          | WIF            ], [Katalog INF], [#status(false)],[#status(true)],[#status(true)],
[],[Informatik], [#status(true)],[#status(false)],[#status(false)],[M          | INF            ], [Informatik], [#status(true)],[#status(true)],[#status(true)],)

#pagebreak()
== Erklärbare und sichere KI
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, Studienprofil: Künstliche Intelligenz, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | BIBA-INF D     ], [Bilinguale Informatik, Deutsche Verlaufsvariante (BiBa-Inf D;B)], [Informatik, ],
[B          | BIBA-INF E     ], [Bilinguale Informatik, Englische Verlaufsvariante (BiBa-Inf E;B)], [Informatik, ],
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikvertiefung, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich), ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | BIBA-INF D     ], [Bilinguale Informatik, Deutsche Verlaufsvariante (BiBa-Inf D;B)], [Informatik, ],
[B          | BIBA-INF E     ], [Bilinguale Informatik, Englische Verlaufsvariante (BiBa-Inf E;B)], [Informatik, ],
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikvertiefung, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich), ],
)
=== Comparision
#table(columns: 5, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [LSF-0], [LSF-1], ),
[B          | BIBA-INF E     ], [Informatik], [#status(false)],[#status(true)],[#status(true)],[B          | BIBA-INF D     ], [Informatik], [#status(false)],[#status(true)],[#status(true)],[B          | INGINF         ], [Informatik - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],
[],[Bereich Informatik], [#status(false)],[#status(true)],[#status(true)],[B          | WIF            ], [Gestalten und Anwenden (Wahlpflichtbereich)], [#status(false)],[#status(true)],[#status(true)],
[],[Gestalten und Anwenden - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],[B          | INF            ], [Informatikvertiefung], [#status(false)],[#status(true)],[#status(true)],
[],[Studienprofil: Künstliche Intelligenz], [#status(true)],[#status(false)],[#status(false)],
[],[Informatik - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],[B          | INF (BILINGUAL)], [Informatik - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],[B          | CV             ], [Informatik - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],
[],[Informatik], [#status(false)],[#status(true)],[#status(true)],)

#pagebreak()
== Flow Visualization
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Fachliche Spezialisierung, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Applied Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Visual Computing, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Computervisualistik, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Fachliche Spezialisierung, ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Applied Data Science, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Informatik, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Bereich Informatik, ],
[M          | VC             ], [Visual Computing - Master (VC;M)], [Visual Computing, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Katalog INF, ],
[M - ALT    | DKE            ], [Data & Knowledge Engineering - Master (DKE;M - alt)], [Applications, ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Computervisualistik, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Fachliche Spezialisierung, ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Applied Data Science, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Informatik, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Bereich Informatik, ],
[M          | VC             ], [Visual Computing - Master (VC;M)], [Visual Computing, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Katalog INF, ],
[M - ALT    | DKE            ], [Data & Knowledge Engineering - Master (DKE;M - alt)], [Applications, ],
)
=== Comparision
#table(columns: 5, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [LSF-0], [LSF-1], ),
[M          | VC             ], [Visual Computing], [#status(true)],[#status(true)],[#status(true)],[M          | WIF            ], [Katalog INF], [#status(false)],[#status(true)],[#status(true)],
[],[Informatik], [#status(true)],[#status(false)],[#status(false)],[M          | INF            ], [Informatik], [#status(true)],[#status(true)],[#status(true)],[M          | INGINF         ], [Bereich Informatik], [#status(false)],[#status(true)],[#status(true)],
[],[Informatik], [#status(true)],[#status(false)],[#status(false)],[M          | CV             ], [Computervisualistik], [#status(false)],[#status(true)],[#status(true)],[M - ALT    | DKE            ], [Applications], [#status(false)],[#status(true)],[#status(true)],[M          | DE             ], [Fachliche Spezialisierung], [#status(true)],[#status(false)],[#status(false)],[M          | DIGIENG        ], [Fachliche Spezialisierung], [#status(false)],[#status(true)],[#status(true)],[M          | DKE            ], [Applied Data Science], [#status(true)],[#status(true)],[#status(true)],)

#pagebreak()
== Geometric Data Structures
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Methoden der Informatik, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Data Processing for Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Visual Computing, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Computervisualistik, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Methoden der Informatik, ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Data Processing for Data Science, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Informatik, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Bereich Informatik, ],
[M          | VC             ], [Visual Computing - Master (VC;M)], [Visual Computing, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Katalog INF, ],
[M - ALT    | DKE            ], [Data & Knowledge Engineering - Master (DKE;M - alt)], [Methods II (Data Management), ],
)
=== Comparision
#table(columns: 4, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [LSF-0], ),
[M          | CV             ], [Computervisualistik], [#status(false)],[#status(true)],[M          | INGINF         ], [Informatik], [#status(true)],[#status(false)],
[],[Bereich Informatik], [#status(false)],[#status(true)],[M          | WIF            ], [Katalog INF], [#status(false)],[#status(true)],
[],[Informatik], [#status(true)],[#status(false)],[M          | DIGIENG        ], [Methoden der Informatik], [#status(false)],[#status(true)],[M          | DKE            ], [Data Processing for Data Science], [#status(true)],[#status(true)],[M          | INF            ], [Informatik], [#status(true)],[#status(true)],[M - ALT    | DKE            ], [Methods II (Data Management)], [#status(false)],[#status(true)],[M          | VC             ], [Visual Computing], [#status(true)],[#status(true)],[M          | DE             ], [Methoden der Informatik], [#status(true)],[#status(false)],)

#pagebreak()
== Grundlagen der C++ Programmierung
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, Anwendungsfach - Computer Games, Computervisualistik Wahlpflicht (SPO 2027), ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, Studienprofil: Computer Games, Informatik Wahlpflicht (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Computervisualistik, Informatik, Anwendungsfach → Computerspiele, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikvertiefung, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich), ],
)
=== Comparision
#table(columns: 4, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [LSF-0], ),
[B          | INF            ], [Informatik Wahlpflicht (SPO 2027)], [#status(true)],[#status(false)],
[],[Informatik - Wahlpflicht], [#status(true)],[#status(false)],
[],[Informatikvertiefung], [#status(false)],[#status(true)],
[],[Studienprofil: Computer Games], [#status(true)],[#status(false)],[B          | INGINF         ], [Informatik - Wahlpflicht], [#status(true)],[#status(false)],
[],[Informatik Wahlpflicht (SPO 2027)], [#status(true)],[#status(false)],[B          | CV             ], [Computervisualistik Wahlpflicht (SPO 2027)], [#status(true)],[#status(false)],
[],[Anwendungsfach → Computerspiele], [#status(false)],[#status(true)],
[],[Anwendungsfach - Computer Games], [#status(true)],[#status(false)],
[],[Informatik], [#status(false)],[#status(true)],
[],[Informatik - Wahlpflicht], [#status(true)],[#status(false)],
[],[Computervisualistik], [#status(false)],[#status(true)],[B          | INF (BILINGUAL)], [Informatik - Wahlpflicht], [#status(true)],[#status(false)],
[],[Informatik Wahlpflicht (SPO 2027)], [#status(true)],[#status(false)],[B          | WIF            ], [Informatik Wahlpflicht (SPO 2027)], [#status(true)],[#status(false)],
[],[Gestalten und Anwenden - Wahlpflicht], [#status(true)],[#status(false)],
[],[Gestalten und Anwenden (Wahlpflichtbereich)], [#status(false)],[#status(true)],)

#pagebreak()
== Grundlagen der Theoretischen Informatik II
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, Computervisualistik Wahlpflicht (SPO 2027), ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Mathematik / Theoretische Informatik, Aufbaumodule (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Mathematik / Theoretische Informatik, Aufbaumodule (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Verstehen und Gestalten - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Mathematik / Theoretische Informatik, Aufbaumodule (SPO 2027), ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatik und Mathematik (Kern- und Pflichtbereich) → 4. Semester, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Verstehen und Gestalten (Wahlpflichtbereich), ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatik und Mathematik (Kern- und Pflichtbereich) → 4. Semester, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Verstehen und Gestalten (Wahlpflichtbereich), ],
)
=== Comparision
#table(columns: 6, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [NextCloud-1], [LSF-0], [LSF-1], ),
[B          | INGINF         ], [Bereich Informatik], [#status(false)],[#status(false)],[#status(true)],[#status(true)],
[],[Informatik - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],[#status(false)],
[],[Informatik Wahlpflicht (SPO 2027)], [#status(true)],[#status(false)],[#status(false)],[#status(false)],[B          | INF            ], [Mathematik / Theoretische Informatik], [#status(true)],[#status(false)],[#status(false)],[#status(false)],
[],[Informatik und Mathematik (Kern- und Pflichtbereich) → 4. Semester], [#status(false)],[#status(false)],[#status(true)],[#status(true)],
[],[Aufbaumodule (SPO 2027)], [#status(true)],[#status(false)],[#status(false)],[#status(false)],[B          | INF (BILINGUAL)], [Aufbaumodule (SPO 2027)], [#status(true)],[#status(true)],[#status(false)],[#status(false)],
[],[Mathematik / Theoretische Informatik], [#status(true)],[#status(true)],[#status(false)],[#status(false)],[B          | WIF            ], [Verstehen und Gestalten - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],[#status(false)],
[],[Verstehen und Gestalten (Wahlpflichtbereich)], [#status(false)],[#status(false)],[#status(true)],[#status(true)],
[],[Informatik Wahlpflicht (SPO 2027)], [#status(true)],[#status(false)],[#status(false)],[#status(false)],[B          | CV             ], [Informatik], [#status(false)],[#status(false)],[#status(true)],[#status(true)],
[],[Informatik - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],[#status(false)],
[],[Computervisualistik Wahlpflicht (SPO 2027)], [#status(true)],[#status(false)],[#status(false)],[#status(false)],)

#pagebreak()
== Grundzüge der Algorithmischen Geometrie
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Computervisualistik - Pflicht, Computervisualistik Pflicht (SPO 2027), ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, Studienprofil: Computer Games, Informatik Wahlpflicht (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Verstehen und Gestalten - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik und Mathematik (Kern- und Pflichtbereich) → 4. Semester, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikvertiefung, Informatikprofile → Computer Games → Pflichtbereich, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Verstehen und Gestalten (Wahlpflichtbereich), ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik und Mathematik (Kern- und Pflichtbereich) → 4. Semester, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikvertiefung, Informatikprofile → Computer Games → Pflichtbereich, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Verstehen und Gestalten (Wahlpflichtbereich), ],
)
=== Comparision
#table(columns: 5, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [LSF-0], [LSF-1], ),
[B          | INF (BILINGUAL)], [Informatik - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],
[],[Informatik Wahlpflicht (SPO 2027)], [#status(true)],[#status(false)],[#status(false)],[B          | WIF            ], [Verstehen und Gestalten (Wahlpflichtbereich)], [#status(false)],[#status(true)],[#status(true)],
[],[Verstehen und Gestalten - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],
[],[Informatik Wahlpflicht (SPO 2027)], [#status(true)],[#status(false)],[#status(false)],[B          | INF            ], [Informatikprofile → Computer Games → Pflichtbereich], [#status(false)],[#status(true)],[#status(true)],
[],[Informatik - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],
[],[Informatik Wahlpflicht (SPO 2027)], [#status(true)],[#status(false)],[#status(false)],
[],[Studienprofil: Computer Games], [#status(true)],[#status(false)],[#status(false)],
[],[Informatikvertiefung], [#status(false)],[#status(true)],[#status(true)],[B          | CV             ], [Informatik und Mathematik (Kern- und Pflichtbereich) → 4. Semester], [#status(false)],[#status(true)],[#status(true)],
[],[Computervisualistik - Pflicht], [#status(true)],[#status(false)],[#status(false)],
[],[Computervisualistik Pflicht (SPO 2027)], [#status(true)],[#status(false)],[#status(false)],[B          | INGINF         ], [Informatik - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],
[],[Informatik Wahlpflicht (SPO 2027)], [#status(true)],[#status(false)],[#status(false)],
[],[Bereich Informatik], [#status(false)],[#status(true)],[#status(true)],)

#pagebreak()
== Hot Topics in Communication and Networked Systems
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, Schlüssel- und Methodenkompetenzen, Wissenschaftliches Seminar, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, Technische Informatik, Schlüssel- und Methodenkompetenzen, Wissenschaftliches Seminar, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, Technische Informatik, Schlüssel- und Methodenkompetenzen, Wissenschaftliches Seminar, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, Technische Informatik, Schlüssel- und Methodenkompetenzen, Wissenschaftliches Seminar, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Schlüssel- und Methodenkompetenzen, Wissenschaftliches Seminar, ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | BIBA-INF D     ], [Bilinguale Informatik, Deutsche Verlaufsvariante (BiBa-Inf D;B)], [Schlüssel- und Methodenkompetenz, ],
[B          | BIBA-INF E     ], [Bilinguale Informatik, Englische Verlaufsvariante (BiBa-Inf E;B)], [Schlüssel- und Methodenkompetenz, ],
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Seminar, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Seminar, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Seminar, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Seminar, ],
)
=== Comparision
#table(columns: 4, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [LSF-0], ),
[B          | INF            ], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Seminar], [#status(false)],[#status(true)],
[],[Technische Informatik], [#status(true)],[#status(false)],
[],[Schlüssel- und Methodenkompetenzen], [#status(true)],[#status(false)],
[],[Wissenschaftliches Seminar], [#status(true)],[#status(false)],
[],[Informatik - Wahlpflicht], [#status(true)],[#status(false)],[B          | INGINF         ], [Wissenschaftliches Seminar], [#status(true)],[#status(false)],
[],[Schlüssel- und Methodenkompetenz → Wissenschaftliches Seminar], [#status(false)],[#status(true)],
[],[Technische Informatik], [#status(true)],[#status(false)],
[],[Informatik - Wahlpflicht], [#status(true)],[#status(false)],
[],[Schlüssel- und Methodenkompetenzen], [#status(true)],[#status(false)],[B          | WIF            ], [Wissenschaftliches Seminar], [#status(true)],[#status(false)],
[],[Schlüssel- und Methodenkompetenzen], [#status(true)],[#status(false)],
[],[Schlüssel- und Methodenkompetenz → Wissenschaftliches Seminar], [#status(false)],[#status(true)],[B          | BIBA-INF D     ], [Schlüssel- und Methodenkompetenz], [#status(false)],[#status(true)],[B          | CV             ], [Informatik - Wahlpflicht], [#status(true)],[#status(false)],
[],[Schlüssel- und Methodenkompetenzen], [#status(true)],[#status(false)],
[],[Schlüssel- und Methodenkompetenz → Wissenschaftliches Seminar], [#status(false)],[#status(true)],
[],[Wissenschaftliches Seminar], [#status(true)],[#status(false)],[B          | BIBA-INF E     ], [Schlüssel- und Methodenkompetenz], [#status(false)],[#status(true)],[B          | INF (BILINGUAL)], [Technische Informatik], [#status(true)],[#status(false)],
[],[Informatik - Wahlpflicht], [#status(true)],[#status(false)],
[],[Schlüssel- und Methodenkompetenzen], [#status(true)],[#status(false)],
[],[Wissenschaftliches Seminar], [#status(true)],[#status(false)],)

#pagebreak()
== Human-Centred Artificial Intelligence
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Grundlagen Informatik, Human Factors, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Learning Methods and Models for Data Science, Applied Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Informatik, Anwendungen/Geisteswissenschaftliche Grundlagen, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Grundlagen Informatik, Human Factors, ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Applied Data Science, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Informatik, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Bereich Informatik, ],
[M          | VC             ], [Visual Computing - Master (VC;M)], [General Computer Science, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Katalog INF, ],
[M - ALT    | DKE            ], [Data & Knowledge Engineering - Master (DKE;M - alt)], [Applications, ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Learning Methods & Models for Data Science, Applied Data Science, ],
[M          | VC             ], [Visual Computing - Master (VC;M)], [General Computer Science, ],
)
=== Comparision
#table(columns: 5, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [LSF-0], [LSF-1], ),
[M          | WIF            ], [Katalog INF], [#status(false)],[#status(true)],[#status(false)],
[],[Informatik], [#status(true)],[#status(false)],[#status(false)],[M          | DKE            ], [Learning Methods & Models for Data Science], [#status(false)],[#status(false)],[#status(true)],
[],[Learning Methods and Models for Data Science], [#status(true)],[#status(false)],[#status(false)],
[],[Applied Data Science], [#status(true)],[#status(true)],[#status(true)],[M          | VC             ], [Computer Science], [#status(true)],[#status(false)],[#status(false)],
[],[General Computer Science], [#status(false)],[#status(true)],[#status(true)],[M          | INF            ], [Informatik], [#status(true)],[#status(true)],[#status(false)],[M          | CV             ], [Informatik], [#status(false)],[#status(true)],[#status(false)],
[],[Anwendungen/Geisteswissenschaftliche Grundlagen], [#status(false)],[#status(true)],[#status(false)],[M          | INGINF         ], [Bereich Informatik], [#status(false)],[#status(true)],[#status(false)],
[],[Informatik], [#status(true)],[#status(false)],[#status(false)],[M          | DE             ], [Grundlagen Informatik], [#status(true)],[#status(false)],[#status(false)],
[],[Human Factors], [#status(true)],[#status(false)],[#status(false)],[M          | DIGIENG        ], [Grundlagen Informatik], [#status(false)],[#status(true)],[#status(false)],
[],[Human Factors], [#status(false)],[#status(true)],[#status(false)],[M - ALT    | DKE            ], [Applications], [#status(false)],[#status(true)],[#status(false)],)

#pagebreak()
== Idea Engineering
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Allgemeine Visualistik, Schlüssel- und Methodenkompetenzen, Anwendungsfach - Computer Games, FIN SMK, Interdisziplinär (SPO 2027), ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Schlüssel- und Methodenkompetenzen, Studienprofil: Computer Games, Studienprofil: Forensik Design, FIN SMK, Ergänzungsbereich (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Schlüssel- und Methodenkompetenzen, FIN SMK, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Ingenieurbereich, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Allgemeine Visualistik → Idea Engineering (AV Idea Engineering), ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikprofile → Computer Games → Nebenfach, Informatikprofile → ForensikDesign\@Informatik → Katalog D: Schlüssel- und Methodenkompetenz, Informatikprofile → Webgründer, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich), ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Allgemeine Visualistik → Idea Engineering (AV Idea Engineering), ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikprofile → Computer Games → Nebenfach, Informatikprofile → ForensikDesign\@Informatik → Katalog D: Schlüssel- und Methodenkompetenz, Informatikprofile → Webgründer, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich), ],
)
=== Comparision
#table(columns: 5, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [LSF-0], [LSF-1], ),
[B          | WIF            ], [Gestalten und Anwenden - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],
[],[Gestalten und Anwenden (Wahlpflichtbereich)], [#status(false)],[#status(true)],[#status(true)],[B          | INGINF         ], [Ingenieurbereich], [#status(true)],[#status(false)],[#status(false)],[B          | CV             ], [Allgemeine Visualistik], [#status(true)],[#status(false)],[#status(false)],
[],[Anwendungsfach - Computer Games], [#status(true)],[#status(false)],[#status(false)],
[],[Schlüssel- und Methodenkompetenzen], [#status(true)],[#status(false)],[#status(false)],
[],[Allgemeine Visualistik → Idea Engineering (AV Idea Engineering)], [#status(false)],[#status(true)],[#status(true)],
[],[FIN SMK], [#status(true)],[#status(false)],[#status(false)],
[],[Interdisziplinär (SPO 2027)], [#status(true)],[#status(false)],[#status(false)],[B          | INF            ], [Schlüssel- und Methodenkompetenzen], [#status(true)],[#status(false)],[#status(false)],
[],[FIN SMK], [#status(true)],[#status(false)],[#status(false)],
[],[Ergänzungsbereich (SPO 2027)], [#status(true)],[#status(false)],[#status(false)],
[],[Studienprofil: Computer Games], [#status(true)],[#status(false)],[#status(false)],
[],[Informatikprofile → Computer Games → Nebenfach], [#status(false)],[#status(true)],[#status(true)],
[],[Informatikprofile → Webgründer], [#status(false)],[#status(true)],[#status(true)],
[],[Informatikprofile → ForensikDesign\@Informatik → Katalog D: Schlüssel- und Methodenkompetenz], [#status(false)],[#status(true)],[#status(true)],
[],[Studienprofil: Forensik Design], [#status(true)],[#status(false)],[#status(false)],[B          | INF (BILINGUAL)], [FIN SMK], [#status(true)],[#status(false)],[#status(false)],
[],[Schlüssel- und Methodenkompetenzen], [#status(true)],[#status(false)],[#status(false)],)

#pagebreak()
== Informationstechnologie in Organisationen
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten - Pflicht, Einführung in die Wirtschaftsinformatik - Wintermodul, ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | BIBA-INF D     ], [Bilinguale Informatik, Deutsche Verlaufsvariante (BiBa-Inf D;B)], [Informatik, ],
[B          | BIBA-INF E     ], [Bilinguale Informatik, Englische Verlaufsvariante (BiBa-Inf E;B)], [Informatik, ],
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikvertiefung, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten (Pflichtbereich), ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | BIBA-INF D     ], [Bilinguale Informatik, Deutsche Verlaufsvariante (BiBa-Inf D;B)], [Informatik, ],
[B          | BIBA-INF E     ], [Bilinguale Informatik, Englische Verlaufsvariante (BiBa-Inf E;B)], [Informatik, ],
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikvertiefung, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten (Pflichtbereich), ],
)
=== Comparision
#table(columns: 5, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [LSF-0], [LSF-1], ),
[B          | INF (BILINGUAL)], [Informatik - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],[B          | WIF            ], [Einführung in die Wirtschaftsinformatik - Wintermodul], [#status(true)],[#status(false)],[#status(false)],
[],[Gestalten (Pflichtbereich)], [#status(false)],[#status(true)],[#status(true)],
[],[Gestalten - Pflicht], [#status(true)],[#status(false)],[#status(false)],[B          | CV             ], [Informatik], [#status(false)],[#status(true)],[#status(true)],
[],[Informatik - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],[B          | BIBA-INF E     ], [Informatik], [#status(false)],[#status(true)],[#status(true)],[B          | BIBA-INF D     ], [Informatik], [#status(false)],[#status(true)],[#status(true)],[B          | INF            ], [Informatik - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],
[],[Informatikvertiefung], [#status(false)],[#status(true)],[#status(true)],[B          | INGINF         ], [Informatik - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],
[],[Bereich Informatik], [#status(false)],[#status(true)],[#status(true)],)

#pagebreak()
== Interaktive Systeme
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, Schlüssel- und Methodenkompetenzen, Anwendungsfach - Computer Games, Computervisualistik - Wahlpflicht, FIN SMK, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, Schlüssel- und Methodenkompetenzen, Studienprofil: Computer Games, FIN SMK, Informatik Wahlpflicht (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, Schlüssel- und Methodenkompetenzen, FIN SMK, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, Schlüssel- und Methodenkompetenzen, FIN SMK, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Computervisualistik, Informatik, Schlüssel- und Methodenkompetenz → Wahlbereich Schlüssel- und Methodenkompetenz, Anwendungsfach → Computerspiele, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikvertiefung, Schlüssel- und Methodenkompetenz → Wahlbereich Schlüssel- und Methodenkompetenz, Informatikprofile → Computer Games → Wahlpflichtbereich, Informatikprofile → ForensikDesign\@Informatik → Katalog B: Grundlegende IT-Methoden - Methoden der Sicherheit, Forensik und erforderlicher IT-Technik, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, Schlüssel- und Methodenkompetenz → Wahlbereich Schlüssel- und Methodenkompetenz, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich), ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Methoden der Informatik, ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Computervisualistik, Informatik, Schlüssel- und Methodenkompetenz → Wahlbereich Schlüssel- und Methodenkompetenz, Anwendungsfach → Computerspiele, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikvertiefung, Schlüssel- und Methodenkompetenz → Wahlbereich Schlüssel- und Methodenkompetenz, Informatikprofile → Computer Games → Wahlpflichtbereich, Informatikprofile → ForensikDesign\@Informatik → Katalog B: Grundlegende IT-Methoden - Methoden der Sicherheit, Forensik und erforderlicher IT-Technik, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, Schlüssel- und Methodenkompetenz → Wahlbereich Schlüssel- und Methodenkompetenz, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich), ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Methoden der Informatik, ],
)
=== Comparision
#table(columns: 5, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [LSF-0], [LSF-1], ),
[B          | CV             ], [FIN SMK], [#status(true)],[#status(false)],[#status(false)],
[],[Informatik], [#status(false)],[#status(true)],[#status(true)],
[],[Computervisualistik], [#status(false)],[#status(true)],[#status(true)],
[],[Anwendungsfach → Computerspiele], [#status(false)],[#status(true)],[#status(true)],
[],[Schlüssel- und Methodenkompetenz → Wahlbereich Schlüssel- und Methodenkompetenz], [#status(false)],[#status(true)],[#status(true)],
[],[Informatik - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],
[],[Schlüssel- und Methodenkompetenzen], [#status(true)],[#status(false)],[#status(false)],
[],[Anwendungsfach - Computer Games], [#status(true)],[#status(false)],[#status(false)],
[],[Computervisualistik - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],[B          | WIF            ], [Gestalten und Anwenden (Wahlpflichtbereich)], [#status(false)],[#status(true)],[#status(true)],
[],[Gestalten und Anwenden - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],[B          | INGINF         ], [Schlüssel- und Methodenkompetenzen], [#status(true)],[#status(false)],[#status(false)],
[],[FIN SMK], [#status(true)],[#status(false)],[#status(false)],
[],[Informatik - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],
[],[Schlüssel- und Methodenkompetenz → Wahlbereich Schlüssel- und Methodenkompetenz], [#status(false)],[#status(true)],[#status(true)],
[],[Bereich Informatik], [#status(false)],[#status(true)],[#status(true)],[M          | DIGIENG        ], [Methoden der Informatik], [#status(false)],[#status(true)],[#status(true)],[B          | INF            ], [Informatikprofile → ForensikDesign\@Informatik → Katalog B: Grundlegende IT-Methoden - Methoden der Sicherheit, Forensik und erforderlicher IT-Technik], [#status(false)],[#status(true)],[#status(true)],
[],[Schlüssel- und Methodenkompetenzen], [#status(true)],[#status(false)],[#status(false)],
[],[FIN SMK], [#status(true)],[#status(false)],[#status(false)],
[],[Informatik Wahlpflicht (SPO 2027)], [#status(true)],[#status(false)],[#status(false)],
[],[Informatikvertiefung], [#status(false)],[#status(true)],[#status(true)],
[],[Schlüssel- und Methodenkompetenz → Wahlbereich Schlüssel- und Methodenkompetenz], [#status(false)],[#status(true)],[#status(true)],
[],[Informatikprofile → Computer Games → Wahlpflichtbereich], [#status(false)],[#status(true)],[#status(true)],
[],[Studienprofil: Computer Games], [#status(true)],[#status(false)],[#status(false)],
[],[Informatik - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],[B          | INF (BILINGUAL)], [Informatik - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],
[],[Schlüssel- und Methodenkompetenzen], [#status(true)],[#status(false)],[#status(false)],
[],[FIN SMK], [#status(true)],[#status(false)],[#status(false)],)

#pagebreak()
== Introduction to Deep Learning
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Methoden der Informatik, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Learning Methods and Models for Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Informatik, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Methoden der Informatik, ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Learning Methods & Models for Data Science, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Informatik, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Bereich Informatik, ],
[M          | VC             ], [Visual Computing - Master (VC;M)], [General Computer Science, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Katalog INF, ],
[M - ALT    | DKE            ], [Data & Knowledge Engineering - Master (DKE;M - alt)], [Methods I (Knowledge Discovery), ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Informatik, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Methoden der Informatik, ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Learning Methods & Models for Data Science, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Informatik, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Bereich Informatik, ],
[M          | VC             ], [Visual Computing - Master (VC;M)], [General Computer Science, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Katalog INF, ],
[M - ALT    | DKE            ], [Data & Knowledge Engineering - Master (DKE;M - alt)], [Methods I (Knowledge Discovery), ],
)
=== Comparision
#table(columns: 5, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [LSF-0], [LSF-1], ),
[M          | DIGIENG        ], [Methoden der Informatik], [#status(false)],[#status(true)],[#status(true)],[M          | DKE            ], [Learning Methods & Models for Data Science], [#status(false)],[#status(true)],[#status(true)],
[],[Learning Methods and Models for Data Science], [#status(true)],[#status(false)],[#status(false)],[M          | CV             ], [Informatik], [#status(false)],[#status(true)],[#status(true)],[M          | WIF            ], [Katalog INF], [#status(false)],[#status(true)],[#status(true)],
[],[Informatik], [#status(true)],[#status(false)],[#status(false)],[M - ALT    | DKE            ], [Methods I (Knowledge Discovery)], [#status(false)],[#status(true)],[#status(true)],[M          | DE             ], [Methoden der Informatik], [#status(true)],[#status(false)],[#status(false)],[M          | INGINF         ], [Bereich Informatik], [#status(false)],[#status(true)],[#status(true)],
[],[Informatik], [#status(true)],[#status(false)],[#status(false)],[M          | VC             ], [General Computer Science], [#status(false)],[#status(true)],[#status(true)],
[],[Computer Science], [#status(true)],[#status(false)],[#status(false)],[M          | INF            ], [Informatik], [#status(true)],[#status(true)],[#status(true)],)

#pagebreak()
== Introduction to Distributed Sensor Data Fusion
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Methoden des Digital Engineering, Methoden der Informatik, Fachliche Spezialisierung, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Applied Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, Informatik Wahlpflicht (SPO 2027), ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, Ingenieurinformatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, Computer Science (SPO 2027), ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, Informatik Wahlpflicht (SPO 2027), ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | BIBA-INF E     ], [Bilinguale Informatik, Englische Verlaufsvariante (BiBa-Inf E;B)], [Informatik, ],
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikvertiefung, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich), ],
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Informatik, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Methoden des Digital Engineering, Methoden der Informatik, Fachliche Spezialisierung, ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Data Processing for Data Science, Applied Data Science, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Informatik, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Bereich Informatik, Bereich Ingenieurinformatik, ],
[M          | VC             ], [Visual Computing - Master (VC;M)], [Visual Computing, ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | BIBA-INF E     ], [Bilinguale Informatik, Englische Verlaufsvariante (BiBa-Inf E;B)], [Informatik, ],
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikvertiefung, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich), ],
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Informatik, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Methoden des Digital Engineering, Methoden der Informatik, Fachliche Spezialisierung, ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Applied Data Science, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Informatik, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Bereich Informatik, Bereich Ingenieurinformatik, ],
[M          | VC             ], [Visual Computing - Master (VC;M)], [General Computer Science, ],
)
=== Comparision
#table(columns: 6, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [NextCloud-1], [LSF-0], [LSF-1], ),
[M          | INF            ], [Informatik Wahlpflicht (SPO 2027)], [#status(true)],[#status(false)],[#status(false)],[#status(false)],
[],[Informatik], [#status(true)],[#status(false)],[#status(true)],[#status(true)],[M          | INGINF         ], [Ingenieurinformatik], [#status(true)],[#status(false)],[#status(false)],[#status(false)],
[],[Bereich Informatik], [#status(false)],[#status(false)],[#status(true)],[#status(true)],
[],[Informatik], [#status(true)],[#status(false)],[#status(false)],[#status(false)],
[],[Bereich Ingenieurinformatik], [#status(false)],[#status(false)],[#status(true)],[#status(true)],[M          | DKE            ], [Data Processing for Data Science], [#status(false)],[#status(false)],[#status(true)],[#status(false)],
[],[Applied Data Science], [#status(true)],[#status(false)],[#status(true)],[#status(true)],[B          | INF            ], [Informatik - Wahlpflicht], [#status(false)],[#status(true)],[#status(false)],[#status(false)],
[],[Informatikvertiefung], [#status(false)],[#status(false)],[#status(true)],[#status(true)],[B          | CV             ], [Informatik], [#status(false)],[#status(false)],[#status(true)],[#status(true)],
[],[Informatik - Wahlpflicht], [#status(false)],[#status(true)],[#status(false)],[#status(false)],[M          | VC             ], [Computer Science (SPO 2027)], [#status(true)],[#status(false)],[#status(false)],[#status(false)],
[],[Visual Computing], [#status(false)],[#status(false)],[#status(true)],[#status(false)],
[],[General Computer Science], [#status(false)],[#status(false)],[#status(false)],[#status(true)],
[],[Computer Science], [#status(true)],[#status(false)],[#status(false)],[#status(false)],[B          | WIF            ], [Gestalten und Anwenden (Wahlpflichtbereich)], [#status(false)],[#status(false)],[#status(true)],[#status(true)],
[],[Gestalten und Anwenden - Wahlpflicht], [#status(false)],[#status(true)],[#status(false)],[#status(false)],[M          | DE             ], [Methoden der Informatik], [#status(true)],[#status(false)],[#status(false)],[#status(false)],
[],[Methoden des Digital Engineering], [#status(true)],[#status(false)],[#status(false)],[#status(false)],
[],[Fachliche Spezialisierung], [#status(true)],[#status(false)],[#status(false)],[#status(false)],[M          | CV             ], [Informatik], [#status(false)],[#status(false)],[#status(true)],[#status(true)],[M          | DIGIENG        ], [Methoden des Digital Engineering], [#status(false)],[#status(false)],[#status(true)],[#status(true)],
[],[Methoden der Informatik], [#status(false)],[#status(false)],[#status(true)],[#status(true)],
[],[Fachliche Spezialisierung], [#status(false)],[#status(false)],[#status(true)],[#status(true)],[M          | WIF            ], [Informatik Wahlpflicht (SPO 2027)], [#status(true)],[#status(false)],[#status(false)],[#status(false)],
[],[Informatik], [#status(true)],[#status(false)],[#status(false)],[#status(false)],[B          | BIBA-INF E     ], [Informatik], [#status(false)],[#status(false)],[#status(true)],[#status(true)],[B          | INF (BILINGUAL)], [Informatik - Wahlpflicht], [#status(false)],[#status(true)],[#status(false)],[#status(false)],[B          | INGINF         ], [Informatik - Wahlpflicht], [#status(false)],[#status(true)],[#status(false)],[#status(false)],
[],[Bereich Informatik], [#status(false)],[#status(false)],[#status(true)],[#status(true)],)

#pagebreak()
== Introduction to Machine Learning Safety
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Methoden der Informatik, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Learning Methods and Models for Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Informatik, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Methoden der Informatik, ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Learning Methods & Models for Data Science, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Informatik, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Bereich Informatik, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Katalog INF, ],
[M - ALT    | DKE            ], [Data & Knowledge Engineering - Master (DKE;M - alt)], [Models, ],
)
=== Comparision
#table(columns: 4, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [LSF-0], ),
[M          | DE             ], [Methoden der Informatik], [#status(true)],[#status(false)],[M - ALT    | DKE            ], [Models], [#status(false)],[#status(true)],[M          | DIGIENG        ], [Methoden der Informatik], [#status(false)],[#status(true)],[M          | WIF            ], [Katalog INF], [#status(false)],[#status(true)],
[],[Informatik], [#status(true)],[#status(false)],[M          | DKE            ], [Learning Methods and Models for Data Science], [#status(true)],[#status(false)],
[],[Learning Methods & Models for Data Science], [#status(false)],[#status(true)],[M          | INGINF         ], [Informatik], [#status(true)],[#status(false)],
[],[Bereich Informatik], [#status(false)],[#status(true)],[M          | VC             ], [Computer Science], [#status(true)],[#status(false)],[M          | INF            ], [Informatik], [#status(true)],[#status(true)],[M          | CV             ], [Informatik], [#status(false)],[#status(true)],)

#pagebreak()
== Logik
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Mathematik / Logik, Computervisualistik Pflicht (SPO 2027), ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Mathematik / Logik, Aufbaumodule (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Mathematik / Logik, Aufbaumodule (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Mathematik / Logik, Ingenieurinformatik Pflicht (SPO 2027), ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Verstehen und Gestalten - Wahlpflicht, Informatik Pflicht (SPO 2027), ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Mathematik / Logik, Aufbaumodule (SPO 2027), ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Mathematik / Logik, Computervisualistik Pflicht (SPO 2027), ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Mathematik / Logik, Aufbaumodule (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Mathematik / Logik, Aufbaumodule (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Mathematik / Logik, Ingenieurinformatik Pflicht (SPO 2027), ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Informatik Pflicht (SPO 2027), ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik und Mathematik (Kern- und Pflichtbereich) → 2. Semester, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatik und Mathematik (Kern- und Pflichtbereich) → 2. Semester, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Informatik und Mathematik (Kern- und Pflichtbereich) → 2. Semester, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Verstehen und Gestalten (Wahlpflichtbereich), ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik und Mathematik (Kern- und Pflichtbereich) → 2. Semester, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatik und Mathematik (Kern- und Pflichtbereich) → 2. Semester, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Informatik und Mathematik (Kern- und Pflichtbereich) → 2. Semester, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Verstehen und Gestalten (Wahlpflichtbereich), ],
)
=== Comparision
#table(columns: 7, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [NextCloud-1], [NextCloud-2], [LSF-0], [LSF-1], ),
[B          | INF (BILINGUAL)], [Mathematik / Logik], [#status(true)],[#status(true)],[#status(true)],[#status(false)],[#status(false)],
[],[Aufbaumodule (SPO 2027)], [#status(true)],[#status(true)],[#status(true)],[#status(false)],[#status(false)],[B          | INGINF         ], [Ingenieurinformatik Pflicht (SPO 2027)], [#status(true)],[#status(false)],[#status(true)],[#status(false)],[#status(false)],
[],[Informatik und Mathematik (Kern- und Pflichtbereich) → 2. Semester], [#status(false)],[#status(false)],[#status(false)],[#status(true)],[#status(true)],
[],[Mathematik / Logik], [#status(true)],[#status(false)],[#status(true)],[#status(false)],[#status(false)],[B          | WIF            ], [Informatik Pflicht (SPO 2027)], [#status(true)],[#status(false)],[#status(true)],[#status(false)],[#status(false)],
[],[Verstehen und Gestalten (Wahlpflichtbereich)], [#status(false)],[#status(false)],[#status(false)],[#status(true)],[#status(true)],
[],[Verstehen und Gestalten - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],[#status(false)],[#status(false)],[B          | INF            ], [Informatik und Mathematik (Kern- und Pflichtbereich) → 2. Semester], [#status(false)],[#status(false)],[#status(false)],[#status(true)],[#status(true)],
[],[Aufbaumodule (SPO 2027)], [#status(true)],[#status(false)],[#status(true)],[#status(false)],[#status(false)],
[],[Mathematik / Logik], [#status(true)],[#status(false)],[#status(true)],[#status(false)],[#status(false)],[B          | CV             ], [Mathematik / Logik], [#status(true)],[#status(false)],[#status(true)],[#status(false)],[#status(false)],
[],[Computervisualistik Pflicht (SPO 2027)], [#status(true)],[#status(false)],[#status(true)],[#status(false)],[#status(false)],
[],[Informatik und Mathematik (Kern- und Pflichtbereich) → 2. Semester], [#status(false)],[#status(false)],[#status(false)],[#status(true)],[#status(true)],)

#pagebreak()
== Management of Global Large IT-Systems in International Companies
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Human Factors, Methoden der Informatik, Fachliche Spezialisierung, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Applied Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Wirtschaftsinformatik, ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Informatik, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Human Factors, Methoden der Informatik, Fachliche Spezialisierung, ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Applied Data Science, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Informatik, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Bereich Informatik, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Katalog WIF, ],
[M - ALT    | DKE            ], [Data & Knowledge Engineering - Master (DKE;M - alt)], [Applications, ],
)
=== Comparision
#table(columns: 4, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [LSF-0], ),
[M - ALT    | DKE            ], [Applications], [#status(false)],[#status(true)],[M          | DKE            ], [Applied Data Science], [#status(true)],[#status(true)],[M          | CV             ], [Informatik], [#status(false)],[#status(true)],[M          | WIF            ], [Wirtschaftsinformatik], [#status(true)],[#status(false)],
[],[Katalog WIF], [#status(false)],[#status(true)],[M          | DE             ], [Fachliche Spezialisierung], [#status(true)],[#status(false)],
[],[Human Factors], [#status(true)],[#status(false)],
[],[Methoden der Informatik], [#status(true)],[#status(false)],[M          | INF            ], [Informatik], [#status(true)],[#status(true)],[M          | VC             ], [Computer Science], [#status(true)],[#status(false)],[M          | DIGIENG        ], [Human Factors], [#status(false)],[#status(true)],
[],[Methoden der Informatik], [#status(false)],[#status(true)],
[],[Fachliche Spezialisierung], [#status(false)],[#status(true)],[M          | INGINF         ], [Bereich Informatik], [#status(false)],[#status(true)],
[],[Informatik], [#status(true)],[#status(false)],)

#pagebreak()
== Medical Visualization
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Visual Computing, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Computervisualistik, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Informatik, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Bereich Informatik, ],
[M          | VC             ], [Visual Computing - Master (VC;M)], [Visual Computing, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Katalog INF, ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Computervisualistik, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Informatik, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Bereich Informatik, ],
[M          | VC             ], [Visual Computing - Master (VC;M)], [Visual Computing, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Katalog INF, ],
)
=== Comparision
#table(columns: 5, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [LSF-0], [LSF-1], ),
[M          | WIF            ], [Katalog INF], [#status(false)],[#status(true)],[#status(true)],
[],[Informatik], [#status(true)],[#status(false)],[#status(false)],[M          | INGINF         ], [Informatik], [#status(true)],[#status(false)],[#status(false)],
[],[Bereich Informatik], [#status(false)],[#status(true)],[#status(true)],[M          | INF            ], [Informatik], [#status(true)],[#status(true)],[#status(true)],[M          | VC             ], [Visual Computing], [#status(true)],[#status(true)],[#status(true)],[M          | CV             ], [Computervisualistik], [#status(false)],[#status(true)],[#status(true)],)

#pagebreak()
== Mesh Processing
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Anwendungsfach - Computer Games, Computervisualistik - Wahlpflicht, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, Studienprofil: Computer Games, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Computervisualistik, Anwendungsfach → Computerspiele, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikvertiefung, Informatikprofile → Computer Games → Wahlpflichtbereich, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich), ],
[M          | VC             ], [Visual Computing - Master (VC;M)], [Visual Computing, ],
)
=== Comparision
#table(columns: 4, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [LSF-0], ),
[B          | INF (BILINGUAL)], [Informatik - Wahlpflicht], [#status(true)],[#status(false)],[B          | WIF            ], [Gestalten und Anwenden (Wahlpflichtbereich)], [#status(false)],[#status(true)],
[],[Gestalten und Anwenden - Wahlpflicht], [#status(true)],[#status(false)],[M          | VC             ], [Visual Computing], [#status(false)],[#status(true)],[B          | INF            ], [Informatikprofile → Computer Games → Wahlpflichtbereich], [#status(false)],[#status(true)],
[],[Studienprofil: Computer Games], [#status(true)],[#status(false)],
[],[Informatik - Wahlpflicht], [#status(true)],[#status(false)],
[],[Informatikvertiefung], [#status(false)],[#status(true)],[B          | INGINF         ], [Informatik - Wahlpflicht], [#status(true)],[#status(false)],
[],[Bereich Informatik], [#status(false)],[#status(true)],[B          | CV             ], [Anwendungsfach - Computer Games], [#status(true)],[#status(false)],
[],[Computervisualistik], [#status(false)],[#status(true)],
[],[Anwendungsfach → Computerspiele], [#status(false)],[#status(true)],
[],[Computervisualistik - Wahlpflicht], [#status(true)],[#status(false)],)

#pagebreak()
== Mobile Robotics
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, Computervisualistik Wahlpflicht (SPO 2027), ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | BIBA-INF E     ], [Bilinguale Informatik, Englische Verlaufsvariante (BiBa-Inf E;B)], [Informatik, ],
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikvertiefung, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich), ],
)
=== Comparision
#table(columns: 4, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [LSF-0], ),
[B          | INGINF         ], [Bereich Informatik], [#status(false)],[#status(true)],
[],[Informatik - Wahlpflicht], [#status(true)],[#status(false)],
[],[Informatik Wahlpflicht (SPO 2027)], [#status(true)],[#status(false)],[B          | WIF            ], [Gestalten und Anwenden (Wahlpflichtbereich)], [#status(false)],[#status(true)],
[],[Gestalten und Anwenden - Wahlpflicht], [#status(true)],[#status(false)],
[],[Informatik Wahlpflicht (SPO 2027)], [#status(true)],[#status(false)],[B          | CV             ], [Informatik], [#status(false)],[#status(true)],
[],[Informatik - Wahlpflicht], [#status(true)],[#status(false)],
[],[Computervisualistik Wahlpflicht (SPO 2027)], [#status(true)],[#status(false)],[B          | BIBA-INF E     ], [Informatik], [#status(false)],[#status(true)],[B          | INF (BILINGUAL)], [Informatik - Wahlpflicht], [#status(true)],[#status(false)],
[],[Informatik Wahlpflicht (SPO 2027)], [#status(true)],[#status(false)],[B          | INF            ], [Informatikvertiefung], [#status(false)],[#status(true)],
[],[Informatik - Wahlpflicht], [#status(true)],[#status(false)],
[],[Informatik Wahlpflicht (SPO 2027)], [#status(true)],[#status(false)],)

#pagebreak()
== Narrative Visualization
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Human Factors, Fachliche Spezialisierung, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Applied Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Visual Computing, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Schlüssel- und Methodenkompetenzen, Wissenschaftliches Seminar, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Schlüssel- und Methodenkompetenzen, Wissenschaftliches Seminar, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Schlüssel- und Methodenkompetenzen, Wissenschaftliches Seminar, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Schlüssel- und Methodenkompetenzen, Wissenschaftliches Seminar, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Schlüssel- und Methodenkompetenzen, Wissenschaftliches Seminar, ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Seminar, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Seminar, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Seminar, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Seminar, ],
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Computervisualistik, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Human Factors, Fachliche Spezialisierung, ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Applied Data Science, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Informatik, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Bereich Informatik, ],
[M          | VC             ], [Visual Computing - Master (VC;M)], [Visual Computing, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Katalog INF, ],
)
=== Comparision
#table(columns: 5, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [NextCloud-1], [LSF-0], ),
[B          | INF            ], [Wissenschaftliches Seminar], [#status(false)],[#status(true)],[#status(false)],
[],[Schlüssel- und Methodenkompetenzen], [#status(false)],[#status(true)],[#status(false)],
[],[Schlüssel- und Methodenkompetenz → Wissenschaftliches Seminar], [#status(false)],[#status(false)],[#status(true)],[M          | CV             ], [Computervisualistik], [#status(false)],[#status(false)],[#status(true)],[M          | DE             ], [Fachliche Spezialisierung], [#status(true)],[#status(false)],[#status(false)],
[],[Human Factors], [#status(true)],[#status(false)],[#status(false)],[M          | INGINF         ], [Informatik], [#status(true)],[#status(false)],[#status(false)],
[],[Bereich Informatik], [#status(false)],[#status(false)],[#status(true)],[B          | INGINF         ], [Schlüssel- und Methodenkompetenzen], [#status(false)],[#status(true)],[#status(false)],
[],[Wissenschaftliches Seminar], [#status(false)],[#status(true)],[#status(false)],
[],[Schlüssel- und Methodenkompetenz → Wissenschaftliches Seminar], [#status(false)],[#status(false)],[#status(true)],[B          | INF (BILINGUAL)], [Schlüssel- und Methodenkompetenzen], [#status(false)],[#status(true)],[#status(false)],
[],[Wissenschaftliches Seminar], [#status(false)],[#status(true)],[#status(false)],[M          | VC             ], [Visual Computing], [#status(true)],[#status(false)],[#status(true)],[M          | DKE            ], [Applied Data Science], [#status(true)],[#status(false)],[#status(true)],[M          | WIF            ], [Informatik], [#status(true)],[#status(false)],[#status(false)],
[],[Katalog INF], [#status(false)],[#status(false)],[#status(true)],[M          | INF            ], [Informatik], [#status(true)],[#status(false)],[#status(true)],[B          | CV             ], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Seminar], [#status(false)],[#status(false)],[#status(true)],
[],[Schlüssel- und Methodenkompetenzen], [#status(false)],[#status(true)],[#status(false)],
[],[Wissenschaftliches Seminar], [#status(false)],[#status(true)],[#status(false)],[M          | DIGIENG        ], [Human Factors], [#status(false)],[#status(false)],[#status(true)],
[],[Fachliche Spezialisierung], [#status(false)],[#status(false)],[#status(true)],[B          | WIF            ], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Seminar], [#status(false)],[#status(false)],[#status(true)],
[],[Schlüssel- und Methodenkompetenzen], [#status(false)],[#status(true)],[#status(false)],
[],[Wissenschaftliches Seminar], [#status(false)],[#status(true)],[#status(false)],)

#pagebreak()
== Parallel Storage Systems
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Methoden der Informatik, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Data Processing for Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Informatik, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Methoden der Informatik, ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Data Processing for Data Science, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Informatik, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Bereich Informatik, ],
[M          | VC             ], [Visual Computing - Master (VC;M)], [General Computer Science, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Katalog INF, ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Informatik, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Methoden der Informatik, ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Data Processing for Data Science, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Informatik, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Bereich Informatik, ],
[M          | VC             ], [Visual Computing - Master (VC;M)], [General Computer Science, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Katalog INF, ],
)
=== Comparision
#table(columns: 5, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [LSF-0], [LSF-1], ),
[M          | INGINF         ], [Informatik], [#status(true)],[#status(false)],[#status(false)],
[],[Bereich Informatik], [#status(false)],[#status(true)],[#status(true)],[M          | VC             ], [General Computer Science], [#status(false)],[#status(true)],[#status(true)],
[],[Computer Science], [#status(true)],[#status(false)],[#status(false)],[M          | CV             ], [Informatik], [#status(false)],[#status(true)],[#status(true)],[M          | DKE            ], [Data Processing for Data Science], [#status(true)],[#status(true)],[#status(true)],[M          | WIF            ], [Katalog INF], [#status(false)],[#status(true)],[#status(true)],
[],[Informatik], [#status(true)],[#status(false)],[#status(false)],[M          | DE             ], [Methoden der Informatik], [#status(true)],[#status(false)],[#status(false)],[M          | INF            ], [Informatik], [#status(true)],[#status(true)],[#status(true)],[M          | DIGIENG        ], [Methoden der Informatik], [#status(false)],[#status(true)],[#status(true)],)

#pagebreak()
== Programmierparadigmen
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, Computervisualistik Wahlpflicht (SPO 2027), ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik II - Pflicht, Aufbaumodule (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik II - Pflicht, Aufbaumodule (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, Informatik Pflicht (SPO 2027), ],
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Grundlagen Informatik, Informatik Grundlagen (SPO 2027), ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatik und Mathematik (Kern- und Pflichtbereich) → 4. Semester, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich), ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Grundlagen Informatik, ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatik und Mathematik (Kern- und Pflichtbereich) → 4. Semester, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich), ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Grundlagen Informatik, ],
)
=== Comparision
#table(columns: 5, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [LSF-0], [LSF-1], ),
[B          | INGINF         ], [Informatik - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],
[],[Informatik Wahlpflicht (SPO 2027)], [#status(true)],[#status(false)],[#status(false)],
[],[Bereich Informatik], [#status(false)],[#status(true)],[#status(true)],[M          | DE             ], [Grundlagen Informatik], [#status(true)],[#status(false)],[#status(false)],
[],[Informatik Grundlagen (SPO 2027)], [#status(true)],[#status(false)],[#status(false)],[M          | DIGIENG        ], [Grundlagen Informatik], [#status(false)],[#status(true)],[#status(true)],[B          | INF            ], [Informatik und Mathematik (Kern- und Pflichtbereich) → 4. Semester], [#status(false)],[#status(true)],[#status(true)],
[],[Informatik II - Pflicht], [#status(true)],[#status(false)],[#status(false)],
[],[Aufbaumodule (SPO 2027)], [#status(true)],[#status(false)],[#status(false)],[B          | CV             ], [Informatik - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],
[],[Computervisualistik Wahlpflicht (SPO 2027)], [#status(true)],[#status(false)],[#status(false)],
[],[Informatik], [#status(false)],[#status(true)],[#status(true)],[B          | WIF            ], [Gestalten und Anwenden (Wahlpflichtbereich)], [#status(false)],[#status(true)],[#status(true)],
[],[Informatik Pflicht (SPO 2027)], [#status(true)],[#status(false)],[#status(false)],
[],[Gestalten und Anwenden - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],[B          | INF (BILINGUAL)], [Aufbaumodule (SPO 2027)], [#status(true)],[#status(false)],[#status(false)],
[],[Informatik II - Pflicht], [#status(true)],[#status(false)],[#status(false)],)

#pagebreak()
== Service Engineering
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Applied Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Wirtschaftsinformatik, Informatik, ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikvertiefung, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Verstehen und Gestalten (Wahlpflichtbereich), ],
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Informatik, ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Applied Data Science, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Informatik, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Bereich Informatik, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Katalog INF, ],
[M - ALT    | DKE            ], [Data & Knowledge Engineering - Master (DKE;M - alt)], [Applications, ],
)
=== Comparision
#table(columns: 5, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [NextCloud-1], [LSF-0], ),
[M          | INF            ], [Informatik], [#status(true)],[#status(false)],[#status(true)],[M          | INGINF         ], [Informatik], [#status(true)],[#status(false)],[#status(false)],
[],[Bereich Informatik], [#status(false)],[#status(false)],[#status(true)],[B          | CV             ], [Informatik - Wahlpflicht], [#status(false)],[#status(true)],[#status(false)],
[],[Informatik], [#status(false)],[#status(false)],[#status(true)],[M - ALT    | DKE            ], [Applications], [#status(false)],[#status(false)],[#status(true)],[B          | INF            ], [Informatik - Wahlpflicht], [#status(false)],[#status(true)],[#status(false)],
[],[Informatikvertiefung], [#status(false)],[#status(false)],[#status(true)],[B          | INF (BILINGUAL)], [Informatik - Wahlpflicht], [#status(false)],[#status(true)],[#status(false)],[B          | INGINF         ], [Informatik - Wahlpflicht], [#status(false)],[#status(true)],[#status(false)],
[],[Bereich Informatik], [#status(false)],[#status(false)],[#status(true)],[B          | WIF            ], [Gestalten und Anwenden - Wahlpflicht], [#status(false)],[#status(true)],[#status(false)],
[],[Verstehen und Gestalten (Wahlpflichtbereich)], [#status(false)],[#status(false)],[#status(true)],[M          | CV             ], [Informatik], [#status(false)],[#status(false)],[#status(true)],[M          | WIF            ], [Informatik], [#status(true)],[#status(false)],[#status(false)],
[],[Katalog INF], [#status(false)],[#status(false)],[#status(true)],
[],[Wirtschaftsinformatik], [#status(true)],[#status(false)],[#status(false)],[M          | DKE            ], [Applied Data Science], [#status(true)],[#status(false)],[#status(true)],)

#pagebreak()
== Sichere Systeme
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, Computervisualistik Wahlpflicht (SPO 2027), ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik II - Pflicht, Aufbaumodule (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik II - Pflicht, Aufbaumodule (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik II - Pflicht, Ingenieurinformatik Pflicht (SPO 2027), ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Anwenden - Pflicht, Informatik Pflicht (SPO 2027), ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatik und Mathematik (Kern- und Pflichtbereich) → 6. Semester, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Informatik und Mathematik (Kern- und Pflichtbereich) → 6. Semester, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Anwenden (Pflichtbereich) → 4. Semester, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Methoden der Informatik, ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatik und Mathematik (Kern- und Pflichtbereich) → 6. Semester, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Informatik und Mathematik (Kern- und Pflichtbereich) → 6. Semester, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Anwenden (Pflichtbereich) → 4. Semester, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Methoden der Informatik, ],
)
=== Comparision
#table(columns: 5, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [LSF-0], [LSF-1], ),
[B          | WIF            ], [Informatik Pflicht (SPO 2027)], [#status(true)],[#status(false)],[#status(false)],
[],[Anwenden (Pflichtbereich) → 4. Semester], [#status(false)],[#status(true)],[#status(true)],
[],[Anwenden - Pflicht], [#status(true)],[#status(false)],[#status(false)],[B          | INF            ], [Informatik II - Pflicht], [#status(true)],[#status(false)],[#status(false)],
[],[Informatik und Mathematik (Kern- und Pflichtbereich) → 6. Semester], [#status(false)],[#status(true)],[#status(true)],
[],[Aufbaumodule (SPO 2027)], [#status(true)],[#status(false)],[#status(false)],[B          | INF (BILINGUAL)], [Aufbaumodule (SPO 2027)], [#status(true)],[#status(false)],[#status(false)],
[],[Informatik II - Pflicht], [#status(true)],[#status(false)],[#status(false)],[B          | INGINF         ], [Informatik II - Pflicht], [#status(true)],[#status(false)],[#status(false)],
[],[Ingenieurinformatik Pflicht (SPO 2027)], [#status(true)],[#status(false)],[#status(false)],
[],[Informatik und Mathematik (Kern- und Pflichtbereich) → 6. Semester], [#status(false)],[#status(true)],[#status(true)],[M          | DIGIENG        ], [Methoden der Informatik], [#status(false)],[#status(true)],[#status(true)],[B          | CV             ], [Informatik], [#status(false)],[#status(true)],[#status(true)],
[],[Computervisualistik Wahlpflicht (SPO 2027)], [#status(true)],[#status(false)],[#status(false)],
[],[Informatik - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],)

#pagebreak()
== Software Defined Networking
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Methoden der Informatik, Fachliche Spezialisierung, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Technische Informatik, Informatikvertiefung, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Technische Informatik, Bereich Informatik, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich), ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Grundlagen Informatik, Methoden der Informatik, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Informatik, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Bereich Informatik, ],
[M          | VC             ], [Visual Computing - Master (VC;M)], [General Computer Science, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Katalog INF, ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Technische Informatik, Informatikvertiefung, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Technische Informatik, Bereich Informatik, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich), ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Grundlagen Informatik, Methoden der Informatik, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Informatik, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Bereich Informatik, ],
[M          | VC             ], [Visual Computing - Master (VC;M)], [General Computer Science, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Katalog INF, ],
)
=== Comparision
#table(columns: 6, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [NextCloud-1], [LSF-0], [LSF-1], ),
[B          | WIF            ], [Gestalten und Anwenden - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],[#status(false)],
[],[Gestalten und Anwenden (Wahlpflichtbereich)], [#status(false)],[#status(false)],[#status(true)],[#status(true)],[B          | INF            ], [Technische Informatik], [#status(false)],[#status(false)],[#status(true)],[#status(true)],
[],[Informatik - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],[#status(false)],
[],[Informatikvertiefung], [#status(false)],[#status(false)],[#status(true)],[#status(true)],[M          | WIF            ], [Katalog INF], [#status(false)],[#status(false)],[#status(true)],[#status(true)],
[],[Informatik], [#status(false)],[#status(true)],[#status(false)],[#status(false)],[M          | INGINF         ], [Informatik], [#status(false)],[#status(true)],[#status(false)],[#status(false)],
[],[Bereich Informatik], [#status(false)],[#status(false)],[#status(true)],[#status(true)],[M          | DE             ], [Methoden der Informatik], [#status(false)],[#status(true)],[#status(false)],[#status(false)],
[],[Fachliche Spezialisierung], [#status(false)],[#status(true)],[#status(false)],[#status(false)],[M          | VC             ], [General Computer Science], [#status(false)],[#status(false)],[#status(true)],[#status(true)],
[],[Computer Science], [#status(false)],[#status(true)],[#status(false)],[#status(false)],[M          | INF            ], [Informatik], [#status(false)],[#status(true)],[#status(true)],[#status(true)],[B          | INGINF         ], [Bereich Informatik], [#status(false)],[#status(false)],[#status(true)],[#status(true)],
[],[Informatik - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],[#status(false)],
[],[Technische Informatik], [#status(false)],[#status(false)],[#status(true)],[#status(true)],[M          | DIGIENG        ], [Grundlagen Informatik], [#status(false)],[#status(false)],[#status(true)],[#status(true)],
[],[Methoden der Informatik], [#status(false)],[#status(false)],[#status(true)],[#status(true)],[B          | INF (BILINGUAL)], [Informatik - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],[#status(false)],[B          | CV             ], [Informatik - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],[#status(false)],
[],[Informatik], [#status(false)],[#status(false)],[#status(true)],[#status(true)],)

#pagebreak()
== Software Development Project
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Schlüssel- und Methodenkompetenzen, Kernmodule (SPO 2027), ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Schlüssel- und Methodenkompetenzen, Kernmodule (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Schlüssel- und Methodenkompetenzen, Informatik Wahlpflicht (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Schlüssel- und Methodenkompetenzen, Kernmodule (SPO 2027), ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Schlüssel- und Methodenkompetenzen, Kernmodule (SPO 2027), ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | BIBA-INF D     ], [Bilinguale Informatik, Deutsche Verlaufsvariante (BiBa-Inf D;B)], [Schlüssel- und Methodenkompetenz, ],
[B          | BIBA-INF E     ], [Bilinguale Informatik, Englische Verlaufsvariante (BiBa-Inf E;B)], [Schlüssel- und Methodenkompetenz, ],
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Schlüssel- und Methodenkompetenz, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Schlüssel- und Methodenkompetenz, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Schlüssel- und Methodenkompetenz, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Schlüssel- und Methodenkompetenz, ],
)
=== Comparision
#table(columns: 4, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [LSF-0], ),
[B          | BIBA-INF D     ], [Schlüssel- und Methodenkompetenz], [#status(false)],[#status(true)],[B          | WIF            ], [Schlüssel- und Methodenkompetenz], [#status(false)],[#status(true)],
[],[Kernmodule (SPO 2027)], [#status(true)],[#status(false)],
[],[Schlüssel- und Methodenkompetenzen], [#status(true)],[#status(false)],[B          | CV             ], [Schlüssel- und Methodenkompetenzen], [#status(true)],[#status(false)],
[],[Kernmodule (SPO 2027)], [#status(true)],[#status(false)],
[],[Schlüssel- und Methodenkompetenz], [#status(false)],[#status(true)],[B          | BIBA-INF E     ], [Schlüssel- und Methodenkompetenz], [#status(false)],[#status(true)],[B          | INGINF         ], [Schlüssel- und Methodenkompetenz], [#status(false)],[#status(true)],
[],[Schlüssel- und Methodenkompetenzen], [#status(true)],[#status(false)],
[],[Kernmodule (SPO 2027)], [#status(true)],[#status(false)],[B          | INF (BILINGUAL)], [Schlüssel- und Methodenkompetenzen], [#status(true)],[#status(false)],
[],[Informatik Wahlpflicht (SPO 2027)], [#status(true)],[#status(false)],[B          | INF            ], [Schlüssel- und Methodenkompetenzen], [#status(true)],[#status(false)],
[],[Schlüssel- und Methodenkompetenz], [#status(false)],[#status(true)],
[],[Kernmodule (SPO 2027)], [#status(true)],[#status(false)],)

#pagebreak()
== Spezifikationstechnik
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, Computervisualistik Wahlpflicht (SPO 2027), ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, Studienprofil: Forensik Design, Informatik Wahlpflicht (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik II - Pflicht, Ingenieurinformatik Pflicht (SPO 2027), ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikvertiefung, Informatikprofile → ForensikDesign\@Informatik → Katalog B: Grundlegende IT-Methoden - Methoden der Sicherheit, Forensik und erforderlicher IT-Technik, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Informatik und Mathematik (Kern- und Pflichtbereich) → 4. Semester, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich), ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikvertiefung, Informatikprofile → ForensikDesign\@Informatik → Katalog B: Grundlegende IT-Methoden - Methoden der Sicherheit, Forensik und erforderlicher IT-Technik, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Informatik und Mathematik (Kern- und Pflichtbereich) → 4. Semester, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich), ],
)
=== Comparision
#table(columns: 5, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [LSF-0], [LSF-1], ),
[B          | INF            ], [Informatik - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],
[],[Studienprofil: Forensik Design], [#status(true)],[#status(false)],[#status(false)],
[],[Informatik Wahlpflicht (SPO 2027)], [#status(true)],[#status(false)],[#status(false)],
[],[Informatikvertiefung], [#status(false)],[#status(true)],[#status(true)],
[],[Informatikprofile → ForensikDesign\@Informatik → Katalog B: Grundlegende IT-Methoden - Methoden der Sicherheit, Forensik und erforderlicher IT-Technik], [#status(false)],[#status(true)],[#status(true)],[B          | WIF            ], [Gestalten und Anwenden - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],
[],[Informatik Wahlpflicht (SPO 2027)], [#status(true)],[#status(false)],[#status(false)],
[],[Gestalten und Anwenden (Wahlpflichtbereich)], [#status(false)],[#status(true)],[#status(true)],[B          | CV             ], [Informatik], [#status(false)],[#status(true)],[#status(true)],
[],[Computervisualistik Wahlpflicht (SPO 2027)], [#status(true)],[#status(false)],[#status(false)],
[],[Informatik - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],[B          | INF (BILINGUAL)], [Informatik Wahlpflicht (SPO 2027)], [#status(true)],[#status(false)],[#status(false)],
[],[Informatik - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],[B          | INGINF         ], [Informatik und Mathematik (Kern- und Pflichtbereich) → 4. Semester], [#status(false)],[#status(true)],[#status(true)],
[],[Informatik II - Pflicht], [#status(true)],[#status(false)],[#status(false)],
[],[Ingenieurinformatik Pflicht (SPO 2027)], [#status(true)],[#status(false)],[#status(false)],)

#pagebreak()
== Technische Aspekte der IT-Sicherheit
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, Computervisualistik Wahlpflicht (SPO 2027), ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, Studienprofil: Forensik Design, Informatik Wahlpflicht (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikvertiefung, Informatikprofile → ForensikDesign\@Informatik → Katalog A: Forensische Designprinzipien, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich), ],
)
=== Comparision
#table(columns: 4, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [LSF-0], ),
[B          | WIF            ], [Gestalten und Anwenden - Wahlpflicht], [#status(true)],[#status(false)],
[],[Informatik Wahlpflicht (SPO 2027)], [#status(true)],[#status(false)],
[],[Gestalten und Anwenden (Wahlpflichtbereich)], [#status(false)],[#status(true)],[B          | INF (BILINGUAL)], [Informatik - Wahlpflicht], [#status(true)],[#status(false)],
[],[Informatik Wahlpflicht (SPO 2027)], [#status(true)],[#status(false)],[B          | CV             ], [Informatik - Wahlpflicht], [#status(true)],[#status(false)],
[],[Computervisualistik Wahlpflicht (SPO 2027)], [#status(true)],[#status(false)],
[],[Informatik], [#status(false)],[#status(true)],[B          | INGINF         ], [Bereich Informatik], [#status(false)],[#status(true)],
[],[Informatik - Wahlpflicht], [#status(true)],[#status(false)],
[],[Informatik Wahlpflicht (SPO 2027)], [#status(true)],[#status(false)],[B          | INF            ], [Informatik Wahlpflicht (SPO 2027)], [#status(true)],[#status(false)],
[],[Informatik - Wahlpflicht], [#status(true)],[#status(false)],
[],[Informatikprofile → ForensikDesign\@Informatik → Katalog A: Forensische Designprinzipien], [#status(false)],[#status(true)],
[],[Informatikvertiefung], [#status(false)],[#status(true)],
[],[Studienprofil: Forensik Design], [#status(true)],[#status(false)],)

#pagebreak()
== Umweltmanagementinformationssysteme
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Wirtschaftsinformatik, ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | INF            ], [Informatik - Master (INF;M)], [Informatik, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Katalog WIF, ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | INF            ], [Informatik - Master (INF;M)], [Informatik, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Katalog WIF, ],
)
=== Comparision
#table(columns: 5, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [LSF-0], [LSF-1], ),
[M          | INF            ], [Informatik], [#status(true)],[#status(true)],[#status(true)],[M          | WIF            ], [Wirtschaftsinformatik], [#status(true)],[#status(false)],[#status(false)],
[],[Katalog WIF], [#status(false)],[#status(true)],[#status(true)],)

#pagebreak()
== Usability und Ästhetik
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, Computervisualistik - Wahlpflicht, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten - Pflicht, Einführung in die Wirtschaftsinformatik - Sommermodul, ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Computervisualistik, Informatik, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikvertiefung, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten (Pflichtbereich) → 6. Semester, ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Computervisualistik, Informatik, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikvertiefung, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten (Pflichtbereich) → 6. Semester, ],
)
=== Comparision
#table(columns: 5, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [LSF-0], [LSF-1], ),
[B          | INGINF         ], [Bereich Informatik], [#status(false)],[#status(true)],[#status(true)],
[],[Informatik - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],[B          | WIF            ], [Gestalten - Pflicht], [#status(true)],[#status(false)],[#status(false)],
[],[Gestalten (Pflichtbereich) → 6. Semester], [#status(false)],[#status(true)],[#status(true)],
[],[Einführung in die Wirtschaftsinformatik - Sommermodul], [#status(true)],[#status(false)],[#status(false)],[B          | INF            ], [Informatikvertiefung], [#status(false)],[#status(true)],[#status(true)],
[],[Informatik - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],[B          | CV             ], [Informatik], [#status(false)],[#status(true)],[#status(true)],
[],[Informatik - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],
[],[Computervisualistik], [#status(false)],[#status(true)],[#status(true)],
[],[Computervisualistik - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],[B          | INF (BILINGUAL)], [Informatik - Wahlpflicht], [#status(true)],[#status(false)],[#status(false)],)

#pagebreak()
== User Experience Design Sprint
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Fachliche Spezialisierung, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Applied Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Wirtschaftsinformatik, Informatik, ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Schlüssel- und Methodenkompetenz → Trainingsmodul / Proseminar, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Schlüssel- und Methodenkompetenz → Trainingsmodul / Proseminar, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Schlüssel- und Methodenkompetenz → Trainingsmodul / Proseminar, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Schlüssel- und Methodenkompetenz → Trainingsmodul, ],
)
=== Comparision
#table(columns: 5, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [NextCloud-1], [LSF-0], ),
[M          | INGINF         ], [Informatik], [#status(true)],[#status(false)],[#status(false)],[M          | DE             ], [Fachliche Spezialisierung], [#status(true)],[#status(false)],[#status(false)],[B          | WIF            ], [Schlüssel- und Methodenkompetenz → Trainingsmodul], [#status(false)],[#status(false)],[#status(true)],
[],[Gestalten und Anwenden - Wahlpflicht], [#status(false)],[#status(true)],[#status(false)],[B          | INGINF         ], [Schlüssel- und Methodenkompetenz → Trainingsmodul / Proseminar], [#status(false)],[#status(false)],[#status(true)],
[],[Informatik - Wahlpflicht], [#status(false)],[#status(true)],[#status(false)],[M          | DKE            ], [Applied Data Science], [#status(true)],[#status(false)],[#status(false)],[M          | WIF            ], [Wirtschaftsinformatik], [#status(true)],[#status(false)],[#status(false)],
[],[Informatik], [#status(true)],[#status(false)],[#status(false)],[B          | INF            ], [Schlüssel- und Methodenkompetenz → Trainingsmodul / Proseminar], [#status(false)],[#status(false)],[#status(true)],
[],[Informatik - Wahlpflicht], [#status(false)],[#status(true)],[#status(false)],[B          | CV             ], [Schlüssel- und Methodenkompetenz → Trainingsmodul / Proseminar], [#status(false)],[#status(false)],[#status(true)],
[],[Informatik - Wahlpflicht], [#status(false)],[#status(true)],[#status(false)],[M          | INF            ], [Informatik], [#status(true)],[#status(false)],[#status(false)],)

#pagebreak()
== Visual Analytics
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Methoden des Digital Engineering, Methoden der Informatik, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Applied Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Visual Computing, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Computervisualistik, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Methoden des Digital Engineering, Methoden der Informatik, Fachliche Spezialisierung, ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Applied Data Science, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Informatik, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Bereich Informatik, ],
[M          | VC             ], [Visual Computing - Master (VC;M)], [Visual Computing, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Katalog INF, ],
[M - ALT    | DKE            ], [Data & Knowledge Engineering - Master (DKE;M - alt)], [Applications, ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Computervisualistik, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Methoden des Digital Engineering, Methoden der Informatik, Fachliche Spezialisierung, ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Applied Data Science, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Informatik, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Bereich Informatik, ],
[M          | VC             ], [Visual Computing - Master (VC;M)], [Visual Computing, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Katalog INF, ],
[M - ALT    | DKE            ], [Data & Knowledge Engineering - Master (DKE;M - alt)], [Applications, ],
)
=== Comparision
#table(columns: 5, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [LSF-0], [LSF-1], ),
[M - ALT    | DKE            ], [Applications], [#status(false)],[#status(true)],[#status(true)],[M          | DE             ], [Methoden des Digital Engineering], [#status(true)],[#status(false)],[#status(false)],
[],[Methoden der Informatik], [#status(true)],[#status(false)],[#status(false)],[M          | CV             ], [Computervisualistik], [#status(false)],[#status(true)],[#status(true)],[M          | DIGIENG        ], [Methoden der Informatik], [#status(false)],[#status(true)],[#status(true)],
[],[Methoden des Digital Engineering], [#status(false)],[#status(true)],[#status(true)],
[],[Fachliche Spezialisierung], [#status(false)],[#status(true)],[#status(true)],[M          | INGINF         ], [Bereich Informatik], [#status(false)],[#status(true)],[#status(true)],
[],[Informatik], [#status(true)],[#status(false)],[#status(false)],[M          | VC             ], [Visual Computing], [#status(true)],[#status(true)],[#status(true)],[M          | WIF            ], [Katalog INF], [#status(false)],[#status(true)],[#status(true)],
[],[Informatik], [#status(true)],[#status(false)],[#status(false)],[M          | DKE            ], [Applied Data Science], [#status(true)],[#status(true)],[#status(true)],[M          | INF            ], [Informatik], [#status(true)],[#status(true)],[#status(true)],)

#pagebreak()
== Wissenschaftliches Teamprojekt KMD
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Interdisziplinäres Team-Projekt, Fachliche Spezialisierung, Digital Engineering-Projekt, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Applied Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, Schlüssel- und Methodenkompetenzen, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, Schlüssel- und Methodenkompetenzen, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, Schlüssel- und Methodenkompetenzen, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Wirtschaftsinformatik, Informatik, Schlüssel- und Methodenkompetenzen, ],
)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Informatik, Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Methoden der Informatik, Fachliche Spezialisierung, ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Applied Data Science, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Informatik, Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Bereich Informatik, Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Katalog INF, Katalog WIF, Schwerpunkt Schlüssel- und Methodenkompetenz, ],
[M - ALT    | DKE            ], [Data & Knowledge Engineering - Master (DKE;M - alt)], [Fundamentals, Methods I (Knowledge Discovery), Methods II (Data Management), Applications, ],
)
=== Comparision
#table(columns: 4, table.header([\#], [Verwendbarkeit],
[NextCloud-0], [LSF-0], ),
[M          | CV             ], [Informatik], [#status(false)],[#status(true)],
[],[Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt], [#status(false)],[#status(true)],[M          | VC             ], [Computer Science], [#status(true)],[#status(false)],
[],[Schlüssel- und Methodenkompetenzen], [#status(true)],[#status(false)],[M          | DIGIENG        ], [Methoden der Informatik], [#status(false)],[#status(true)],
[],[Fachliche Spezialisierung], [#status(false)],[#status(true)],[M          | WIF            ], [Katalog INF], [#status(false)],[#status(true)],
[],[Katalog WIF], [#status(false)],[#status(true)],
[],[Informatik], [#status(true)],[#status(false)],
[],[Schlüssel- und Methodenkompetenzen], [#status(true)],[#status(false)],
[],[Wirtschaftsinformatik], [#status(true)],[#status(false)],
[],[Schwerpunkt Schlüssel- und Methodenkompetenz], [#status(false)],[#status(true)],[M          | DE             ], [Fachliche Spezialisierung], [#status(true)],[#status(false)],
[],[Interdisziplinäres Team-Projekt], [#status(true)],[#status(false)],
[],[Digital Engineering-Projekt], [#status(true)],[#status(false)],[M          | INF            ], [Schlüssel- und Methodenkompetenzen], [#status(true)],[#status(false)],
[],[Informatik], [#status(true)],[#status(true)],
[],[Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt], [#status(false)],[#status(true)],[M - ALT    | DKE            ], [Methods I (Knowledge Discovery)], [#status(false)],[#status(true)],
[],[Methods II (Data Management)], [#status(false)],[#status(true)],
[],[Fundamentals], [#status(false)],[#status(true)],
[],[Applications], [#status(false)],[#status(true)],[M          | DKE            ], [Applied Data Science], [#status(true)],[#status(true)],[M          | INGINF         ], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt], [#status(false)],[#status(true)],
[],[Informatik], [#status(true)],[#status(false)],
[],[Bereich Informatik], [#status(false)],[#status(true)],
[],[Schlüssel- und Methodenkompetenzen], [#status(true)],[#status(false)],)

#pagebreak()
= LSF only
#pagebreak()
== 114 Learning & Memory
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikprofile → Lernende Systeme / Biocomputing, ],
)
#pagebreak()
== 3D Game Projekt (Softwareprojekt)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Schlüssel- und Methodenkompetenz → Softwareprojekt zum IT-Projektmanagement, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Schlüssel- und Methodenkompetenz → Softwareprojekt zum IT-Projektmanagement, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Schlüssel- und Methodenkompetenz → Softwareprojekt zum IT-Projektmanagement, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten (Pflichtbereich) → 4. Semester → Softwareprojekt zum IT-Projektmanagement, ],
)
#pagebreak()
== Advanced Topics in Deep Learning
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | BIBA-INF D     ], [Bilinguale Informatik, Deutsche Verlaufsvariante (BiBa-Inf D;B)], [Informatik, ],
[B          | BIBA-INF E     ], [Bilinguale Informatik, Englische Verlaufsvariante (BiBa-Inf E;B)], [Informatik, ],
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikvertiefung, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich), ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Methoden der Informatik, ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Learning Methods & Models for Data Science, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Informatik, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Bereich Informatik, ],
[M          | VC             ], [Visual Computing - Master (VC;M)], [General Computer Science, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Katalog INF, ],
)
#pagebreak()
== Advanced Topics of KMD
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Informatik, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Methoden der Informatik, ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Learning Methods & Models for Data Science, Data Processing for Data Science, Applied Data Science, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Informatik, Schlüssel- und Methodenkompetenz, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Bereich Informatik, Schlüssel- und Methodenkompetenz, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Katalog WIF, Schwerpunkt Schlüssel- und Methodenkompetenz, ],
[M - ALT    | DKE            ], [Data & Knowledge Engineering - Master (DKE;M - alt)], [Fundamentals, Methods I (Knowledge Discovery), Methods II (Data Management), Applications, ],
)
#pagebreak()
== Algorithms and Data Structures
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
)
#pagebreak()
== Allgemeine Elektrotechnik 2
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Ingenieurbereich → Elektrotechnik (IB-ET), ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Grundlagen Ingenieurwesen, ],
)
#pagebreak()
== Allgemeine Elektrotechnik 2 (HS_Ü2)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Ingenieurbereich → Elektrotechnik (IB-ET), ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Grundlagen Ingenieurwesen, ],
)
#pagebreak()
== Allgemeine Psychologie I: Wahrnehmung / Kognition (Vorlesung)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Allgemeine Visualistik → Psychologie (AV-Psychologie), ],
)
#pagebreak()
== Angewandte Bildverarbeitung (Spezialseminar Bildverarbeitung - Teil III)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Anwendungsfach → Bildinformationstechnik, ],
)
#pagebreak()
== Angewandte Bildverarbeitung und Bildverstehen
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Anwendungsfach → Bildinformationstechnik, ],
)
#pagebreak()
== Anwendungssysteme (Ü)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikvertiefung, Informatikprofile → Webgründer, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Anwenden (Pflichtbereich) → 2. Semester, ],
)
#pagebreak()
== Anwendungssysteme Hörsaalübung
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikvertiefung, Informatikprofile → Webgründer, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Anwenden (Pflichtbereich) → 2. Semester, ],
)
#pagebreak()
== Automatic Speech Recognition
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Anwendungsfach → Bildinformationstechnik, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Fachliche Spezialisierung, ],
)
#pagebreak()
== Automatic Speech Recognition Systems
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Anwendungsfach → Bildinformationstechnik, ],
)
#pagebreak()
== Bachelor- und Masterkolloquium AG WI I
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Berufspraktikum/Bachelorarbeit, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Berufspraktikum/Bachelorarbeit, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Berufspraktikum/Bachelorarbeit, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Berufspraktikum/Bachelorarbeit, ],
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Thesis, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Master Thesis, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Thesis, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Thesis, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Thesis, ],
[M - ALT    | DKE            ], [Data & Knowledge Engineering - Master (DKE;M - alt)], [Thesis, ],
)
#pagebreak()
== Bargaining, Arbitration, Mediation (20812)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Katalog WW → Management & Entrepreneurship, ],
)
#pagebreak()
== Biologische Psychologie 2 (Vorlesung)-Modul I
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Allgemeine Visualistik → Psychologie (AV-Psychologie), ],
)
#pagebreak()
== Business Planning (20624)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Katalog WW → Management & Entrepreneurship, ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Katalog WW → Management & Entrepreneurship, ],
)
#pagebreak()
== CAx-Anwendungen
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Methoden des Digital Engineering, ],
)
#pagebreak()
== CAx-Anwendungen (Übung)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Methoden des Digital Engineering, ],
)
#pagebreak()
== CHANGING RITUALS - Mixed-Reality Projekt (in Kooperation mit der Hochschule Magdeburg-Stendal)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Computervisualistik, ],
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Computervisualistik, ],
[M          | VC             ], [Visual Computing - Master (VC;M)], [Visual Computing, ],
)
#pagebreak()
== Cloud School (Übung)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikvertiefung, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Verstehen und Gestalten (Wahlpflichtbereich), ],
)
#pagebreak()
== Computational Fluid Dynamics (CFD) (Englisch) [Registration per e-mail]
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Fachliche Spezialisierung, ],
)
#pagebreak()
== Computational Fluid Dynamics (CFD) (Englisch) [Registration per e-mail] (Übung)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Fachliche Spezialisierung, ],
)
#pagebreak()
== DE Project: Visualization of Process Engineering Applications
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Digital Engineering-Projekt, ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Applied Data Science, ],
)
#pagebreak()
== DE-Project Swarmlab
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Digital Engineering-Projekt, ],
)
#pagebreak()
== Das Recht der Unternehmensfinanzierung und das Kapitalmarktrecht (20196)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Katalog WW → Management & Entrepreneurship, Katalog WW → Accounting, ],
)
#pagebreak()
== Datenbanken 1 (Database Concepts)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik und Mathematik (Kern- und Pflichtbereich), ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatik und Mathematik (Kern- und Pflichtbereich), ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Informatik und Mathematik (Kern- und Pflichtbereich), ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Anwenden (Pflichtbereich) → 4. Semester, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Grundlagen Informatik, ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik und Mathematik (Kern- und Pflichtbereich), ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatik und Mathematik (Kern- und Pflichtbereich), ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Informatik und Mathematik (Kern- und Pflichtbereich), ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Anwenden (Pflichtbereich) → 4. Semester, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Grundlagen Informatik, ],
)
#pagebreak()
== Datenbanken II (Datenbankimplementierungstechniken)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | BIBA-INF D     ], [Bilinguale Informatik, Deutsche Verlaufsvariante (BiBa-Inf D;B)], [Informatik, ],
[B          | BIBA-INF E     ], [Bilinguale Informatik, Englische Verlaufsvariante (BiBa-Inf E;B)], [Informatik, ],
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikvertiefung, Informatikprofile → ForensikDesign\@Informatik → Katalog B: Grundlegende IT-Methoden - Methoden der Sicherheit, Forensik und erforderlicher IT-Technik, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich), ],
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Informatik, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Methoden der Informatik, ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Data Processing for Data Science, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Informatik, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Bereich Informatik, ],
[M          | VC             ], [Visual Computing - Master (VC;M)], [General Computer Science, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Katalog INF, ],
[M - ALT    | DKE            ], [Data & Knowledge Engineering - Master (DKE;M - alt)], [Fundamentals, Methods II (Data Management), ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | BIBA-INF D     ], [Bilinguale Informatik, Deutsche Verlaufsvariante (BiBa-Inf D;B)], [Informatik, ],
[B          | BIBA-INF E     ], [Bilinguale Informatik, Englische Verlaufsvariante (BiBa-Inf E;B)], [Informatik, ],
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikvertiefung, Informatikprofile → ForensikDesign\@Informatik → Katalog B: Grundlegende IT-Methoden - Methoden der Sicherheit, Forensik und erforderlicher IT-Technik, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich), ],
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Informatik, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Methoden der Informatik, ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Data Processing for Data Science, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Informatik, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Bereich Informatik, ],
[M          | VC             ], [Visual Computing - Master (VC;M)], [General Computer Science, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Katalog INF, ],
[M - ALT    | DKE            ], [Data & Knowledge Engineering - Master (DKE;M - alt)], [Fundamentals, Methods II (Data Management), ],
)
#pagebreak()
== Dezentrale Unternehmenssteuerung (20294)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Katalog WW → Accounting, ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Katalog WW → Accounting, ],
)
#pagebreak()
== Digitalisierung der Politik - Politik der Digitalisierung (909479)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Schlüssel- und Methodenkompetenz → Wahlbereich Schlüssel- und Methodenkompetenz, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Schlüssel- und Methodenkompetenz → Wahlbereich Schlüssel- und Methodenkompetenz, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Schlüssel- und Methodenkompetenz → Wahlbereich Schlüssel- und Methodenkompetenz, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich) → Wahlpflichtfach FIN Schlüssel- und Methodenkompetenz, ],
)
#pagebreak()
== Effiziente Programmierung und Ein-/Ausgabe
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Seminar, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Seminar, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Seminar, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Seminar, ],
)
#pagebreak()
== Einführung in die Systemtheorie
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Ingenieurbereich → Elektrotechnik (IB-ET), ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Ingenieurbereich → Elektrotechnik (IB-ET), ],
)
#pagebreak()
== Forschungskolloquium CSSE
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Berufspraktikum/Bachelorarbeit, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Berufspraktikum/Bachelorarbeit, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Berufspraktikum/Bachelorarbeit, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Berufspraktikum/Bachelorarbeit, ],
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Thesis, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Master Thesis, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Thesis, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Thesis, ],
[M          | VC             ], [Visual Computing - Master (VC;M)], [Master’s thesis, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Thesis, ],
[M - ALT    | DKE            ], [Data & Knowledge Engineering - Master (DKE;M - alt)], [Thesis, ],
)
#pagebreak()
== Forschungsseminar Visual Computing
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Berufspraktikum/Bachelorarbeit, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Berufspraktikum/Bachelorarbeit, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Berufspraktikum/Bachelorarbeit, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Berufspraktikum/Bachelorarbeit, ],
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Thesis, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Thesis, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Thesis, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Thesis, ],
)
#pagebreak()
== Forschungsseminar für Studierende DKE
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Berufspraktikum/Bachelorarbeit, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Berufspraktikum/Bachelorarbeit, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Berufspraktikum/Bachelorarbeit, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Berufspraktikum/Bachelorarbeit, ],
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Thesis, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Master Thesis, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Thesis, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Thesis, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Thesis, ],
[M - ALT    | DKE            ], [Data & Knowledge Engineering - Master (DKE;M - alt)], [Thesis, ],
)
#pagebreak()
== Game Design - Grundlagen
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Computervisualistik, Informatik, Anwendungsfach → Computerspiele, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikvertiefung, Informatikprofile → Computer Games → Wahlpflichtbereich, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich), ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Computervisualistik, Informatik, Anwendungsfach → Computerspiele, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikvertiefung, Informatikprofile → Computer Games → Wahlpflichtbereich, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich), ],
)
#pagebreak()
== Grundlagen  der C++ Programmierung
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Computervisualistik, Informatik, Anwendungsfach → Computerspiele, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikvertiefung, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich), ],
)
#pagebreak()
== Grundlagen der Computer Vision
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Computervisualistik, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikvertiefung, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich), ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Grundlagen Informatik, ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Fundamentals of Data Science, ],
[M - ALT    | DKE            ], [Data & Knowledge Engineering - Master (DKE;M - alt)], [Fundamentals, ],
)
#pagebreak()
== Grundlagen der Maschinenelemente (Vorlesung)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Anwendungsfach → Konstruktion und Design, ],
)
#pagebreak()
== Grundlagen der Maschinenelemente (Übung)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Anwendungsfach → Konstruktion und Design, ],
)
#pagebreak()
== Grundlagen der signalorientierten Bildverarbeitung (BV)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Anwendungsfach → Bildinformationstechnik, ],
)
#pagebreak()
== Grundlagen des maschinellen Lernens
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | BIBA-INF D     ], [Bilinguale Informatik, Deutsche Verlaufsvariante (BiBa-Inf D;B)], [Informatik, ],
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik, Anwendungsfach → Computerspiele, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikprofile → Computer Games, Informatikprofile → ForensikDesign\@Informatik, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich), ],
)
#pagebreak()
== Hardwarenahe Rechnerarchitektur
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Technische Informatik, ],
)
#pagebreak()
== Hot Topics in Computational Intelligence in Games
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Seminar, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Seminar, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Seminar, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Seminar, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Fachliche Spezialisierung, Digital Engineering-Projekt, ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Applied Data Science, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Schlüssel- und Methodenkompetenz, ],
[M - ALT    | DKE            ], [Data & Knowledge Engineering - Master (DKE;M - alt)], [Applications, ],
)
#pagebreak()
== Hot Topics in Evolutionary Multi-Objective Optimization
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Seminar, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Seminar, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Seminar, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Seminar, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Fachliche Spezialisierung, ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Applied Data Science, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Schlüssel- und Methodenkompetenz, ],
[M - ALT    | DKE            ], [Data & Knowledge Engineering - Master (DKE;M - alt)], [Applications, ],
)
#pagebreak()
== IFRS Group Accounting (23971)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Katalog WW → Accounting, ],
)
#pagebreak()
== IT Softwareprojekt KMD
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | BIBA-INF D     ], [Bilinguale Informatik, Deutsche Verlaufsvariante (BiBa-Inf D;B)], [Informatik, Schlüssel- und Methodenkompetenz, ],
[B          | BIBA-INF E     ], [Bilinguale Informatik, Englische Verlaufsvariante (BiBa-Inf E;B)], [Informatik, Schlüssel- und Methodenkompetenz, ],
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Schlüssel- und Methodenkompetenz → Softwareprojekt zum IT-Projektmanagement, Schlüssel- und Methodenkompetenz, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Schlüssel- und Methodenkompetenz → Softwareprojekt zum IT-Projektmanagement, Schlüssel- und Methodenkompetenz, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Schlüssel- und Methodenkompetenz → Softwareprojekt zum IT-Projektmanagement, Schlüssel- und Methodenkompetenz, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich), ],
[M - ALT    | DKE            ], [Data & Knowledge Engineering - Master (DKE;M - alt)], [Methods I (Knowledge Discovery), Applications, ],
)
#pagebreak()
== IT-Forensik (Sommersemester)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikvertiefung, Informatikprofile → ForensikDesign\@Informatik, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich), ],
)
#pagebreak()
== IT-Forensik (Sommersemester) Übung
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikvertiefung, Informatikprofile → ForensikDesign\@Informatik, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich), ],
)
#pagebreak()
== Immunologie
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Anwendungsfach → Biologie, ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Anwendungsfach → Biologie, ],
)
#pagebreak()
== Informatik & Kriminalistik
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | BIBA-INF D     ], [Bilinguale Informatik, Deutsche Verlaufsvariante (BiBa-Inf D;B)], [Informatik, ],
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Computervisualistik, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikvertiefung, Informatikprofile → ForensikDesign\@Informatik → Katalog A: Forensische Designprinzipien, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich), ],
[M - ALT    | DKE            ], [Data & Knowledge Engineering - Master (DKE;M - alt)], [Applications, ],
)
#pagebreak()
== Informatik & Kriminalistik (Übung)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Computervisualistik, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikvertiefung, Informatikprofile → ForensikDesign\@Informatik → Katalog A: Forensische Designprinzipien, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich), ],
[M - ALT    | DKE            ], [Data & Knowledge Engineering - Master (DKE;M - alt)], [Applications, ],
)
#pagebreak()
== Introduction to Software-Engineering for Engineers
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Grundlagen Informatik, ],
)
#pagebreak()
== KI in Unternehmen - Einsatzbereiche und ethische Implikationen
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | BIBA-INF D     ], [Bilinguale Informatik, Deutsche Verlaufsvariante (BiBa-Inf D;B)], [Informatik, Schlüssel- und Methodenkompetenz, ],
[B          | BIBA-INF E     ], [Bilinguale Informatik, Englische Verlaufsvariante (BiBa-Inf E;B)], [Informatik, Schlüssel- und Methodenkompetenz, ],
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik, Schlüssel- und Methodenkompetenz, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Schlüssel- und Methodenkompetenz, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, Schlüssel- und Methodenkompetenz, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Verstehen (Pflichtbereich), Gestalten (Pflichtbereich), Schlüssel- und Methodenkompetenz, ],
)
#pagebreak()
== Kolloquium KMD fuer Bachelor und Praktikanten
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Berufspraktikum/Bachelorarbeit, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Berufspraktikum/Bachelorarbeit, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Berufspraktikum/Bachelorarbeit, ],
)
#pagebreak()
== Kolloquium KMD fuer Master
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Thesis, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Master Thesis, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Thesis, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Thesis, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Thesis, ],
[M - ALT    | DKE            ], [Data & Knowledge Engineering - Master (DKE;M - alt)], [Thesis, ],
)
#pagebreak()
== Logic
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | BIBA-INF E     ], [Bilinguale Informatik, Englische Verlaufsvariante (BiBa-Inf E;B)], [Informatik, ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | BIBA-INF E     ], [Bilinguale Informatik, Englische Verlaufsvariante (BiBa-Inf E;B)], [Informatik, ],
)
#pagebreak()
== Logistiksystemplanung
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Ingenieurbereich → Maschinenbau/Logistik (IB-ML), ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Ingenieurbereich → Maschinenbau/Logistik (IB-ML), ],
)
#pagebreak()
== Logistische Netze
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Ingenieurbereich → Maschinenbau/Logistik (IB-ML), ],
)
#pagebreak()
== Mediensicherheit (in Deutsch)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Computervisualistik, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Informatik, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Bereich Informatik, ],
[M          | VC             ], [Visual Computing - Master (VC;M)], [General Computer Science, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Katalog INF, ],
[M - ALT    | DKE            ], [Data & Knowledge Engineering - Master (DKE;M - alt)], [Applications, ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Computervisualistik, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Informatik, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Bereich Informatik, ],
[M          | VC             ], [Visual Computing - Master (VC;M)], [General Computer Science, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Katalog INF, ],
[M - ALT    | DKE            ], [Data & Knowledge Engineering - Master (DKE;M - alt)], [Applications, ],
)
#pagebreak()
== Messtechnik/Sensorik STK (Praktikum)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Ingenieurbereich → Elektrotechnik (IB-ET), ],
)
#pagebreak()
== Mikrobiologie
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Anwendungsfach → Biologie, ],
)
#pagebreak()
== Molekulare Immunologie
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Anwendungsfach → Biologie, ],
)
#pagebreak()
== Netzwerkprogrammierung und Internet der Dinge
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | BIBA-INF D     ], [Bilinguale Informatik, Deutsche Verlaufsvariante (BiBa-Inf D;B)], [Schlüssel- und Methodenkompetenz, ],
[B          | BIBA-INF E     ], [Bilinguale Informatik, Englische Verlaufsvariante (BiBa-Inf E;B)], [Schlüssel- und Methodenkompetenz, ],
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Schlüssel- und Methodenkompetenz → Softwareprojekt zum IT-Projektmanagement, Schlüssel- und Methodenkompetenz → Wahlbereich Schlüssel- und Methodenkompetenz, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Schlüssel- und Methodenkompetenz → Softwareprojekt zum IT-Projektmanagement, Schlüssel- und Methodenkompetenz → Wahlbereich Schlüssel- und Methodenkompetenz, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Schlüssel- und Methodenkompetenz → Softwareprojekt zum IT-Projektmanagement, Schlüssel- und Methodenkompetenz → Wahlbereich Schlüssel- und Methodenkompetenz, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich) → Wahlpflichtfach FIN Schlüssel- und Methodenkompetenz, ],
)
#pagebreak()
== Praktikum Vernetzte Systeme
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Interdisziplinäres Teamprojekt, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Schwerpunkt Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt, ],
)
#pagebreak()
== Predictive Maintenance Seminar
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikvertiefung, Schlüssel- und Methodenkompetenz → Wissenschaftliches Seminar, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, Schlüssel- und Methodenkompetenz → Wissenschaftliches Seminar, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Seminar, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Methoden des Digital Engineering, Methoden der Informatik, Fachliche Spezialisierung, ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Learning Methods & Models for Data Science, Applied Data Science, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Informatik, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Bereich Informatik, Schlüssel- und Methodenkompetenz, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Katalog INF, ],
)
#pagebreak()
== Principles and Practices of Scientific Work
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Human Factors, ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Fundamentals of Data Science, ],
[M - ALT    | DKE            ], [Data & Knowledge Engineering - Master (DKE;M - alt)], [Fundamentals, ],
)
#pagebreak()
== Principles and Practices of Scientific Work (TU)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Human Factors, ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Fundamentals of Data Science, ],
[M - ALT    | DKE            ], [Data & Knowledge Engineering - Master (DKE;M - alt)], [Fundamentals, ],
)
#pagebreak()
== Projekt: SwarmLab
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Schlüssel- und Methodenkompetenz → Softwareprojekt zum IT-Projektmanagement, Schlüssel- und Methodenkompetenz → Wahlbereich Schlüssel- und Methodenkompetenz, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Schlüssel- und Methodenkompetenz → Softwareprojekt zum IT-Projektmanagement, Schlüssel- und Methodenkompetenz → Wahlbereich Schlüssel- und Methodenkompetenz, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Schlüssel- und Methodenkompetenz → Softwareprojekt zum IT-Projektmanagement, Schlüssel- und Methodenkompetenz → Wahlbereich Schlüssel- und Methodenkompetenz, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten (Pflichtbereich) → 4. Semester → Softwareprojekt zum IT-Projektmanagement, Gestalten und Anwenden (Wahlpflichtbereich) → Wahlpflichtfach FIN Schlüssel- und Methodenkompetenz, ],
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Interdisziplinäres Teamprojekt, Digital Engineering-Projekt, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Schwerpunkt Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt, ],
)
#pagebreak()
== Recent Topics in Business Informatics (SMK)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Schlüssel- und Methodenkompetenz, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Human Factors, Fachliche Spezialisierung, ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Applied Data Science, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Schlüssel- und Methodenkompetenz, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Bereich Informatik, ],
[M          | VC             ], [Visual Computing - Master (VC;M)], [Key and Methodological Competencies (SMK), ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Schwerpunkt Schlüssel- und Methodenkompetenz, ],
[M - ALT    | DKE            ], [Data & Knowledge Engineering - Master (DKE;M - alt)], [Applications, ],
)
#pagebreak()
== Recommenders
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | BIBA-INF D     ], [Bilinguale Informatik, Deutsche Verlaufsvariante (BiBa-Inf D;B)], [Informatik, Schlüssel- und Methodenkompetenz, ],
[B          | BIBA-INF E     ], [Bilinguale Informatik, Englische Verlaufsvariante (BiBa-Inf E;B)], [Informatik, Schlüssel- und Methodenkompetenz, ],
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik, Schlüssel- und Methodenkompetenz, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikvertiefung, Schlüssel- und Methodenkompetenz, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, Schlüssel- und Methodenkompetenz, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich), Schlüssel- und Methodenkompetenz, ],
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Informatik, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Methoden des Digital Engineering, Methoden der Informatik, ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Learning Methods & Models for Data Science, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Informatik, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Bereich Informatik, ],
[M          | VC             ], [Visual Computing - Master (VC;M)], [General Computer Science, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Katalog WIF, ],
[M - ALT    | DKE            ], [Data & Knowledge Engineering - Master (DKE;M - alt)], [Methods I (Knowledge Discovery), Applications, ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | BIBA-INF D     ], [Bilinguale Informatik, Deutsche Verlaufsvariante (BiBa-Inf D;B)], [Informatik, Schlüssel- und Methodenkompetenz, ],
[B          | BIBA-INF E     ], [Bilinguale Informatik, Englische Verlaufsvariante (BiBa-Inf E;B)], [Informatik, Schlüssel- und Methodenkompetenz, ],
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik, Schlüssel- und Methodenkompetenz, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikvertiefung, Schlüssel- und Methodenkompetenz, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich), Schlüssel- und Methodenkompetenz, ],
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Informatik, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Methoden des Digital Engineering, Methoden der Informatik, ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Learning Methods & Models for Data Science, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Informatik, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Bereich Informatik, ],
[M          | VC             ], [Visual Computing - Master (VC;M)], [General Computer Science, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Katalog WIF, ],
[M - ALT    | DKE            ], [Data & Knowledge Engineering - Master (DKE;M - alt)], [Methods I (Knowledge Discovery), Applications, ],
)
#pagebreak()
== Regelung von Drehstrommaschinen
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Ingenieurbereich → Elektrotechnik (IB-ET), ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Ingenieurbereich → Elektrotechnik, ],
)
#pagebreak()
== Regelung von Drehstrommaschinen (Übung)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Ingenieurbereich → Elektrotechnik (IB-ET), ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Ingenieurbereich → Elektrotechnik, ],
)
#pagebreak()
== Regelungstechnik
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Ingenieurbereich → Elektrotechnik (IB-ET), ],
)
#pagebreak()
== Schlüssel- und Methodenkompetenz in der IT-Sicherheit
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Schlüssel- und Methodenkompetenz → Wahlbereich Schlüssel- und Methodenkompetenz, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Schlüssel- und Methodenkompetenz → Wahlbereich Schlüssel- und Methodenkompetenz, Informatikprofile → ForensikDesign\@Informatik → Katalog D: Schlüssel- und Methodenkompetenz, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Schlüssel- und Methodenkompetenz → Wahlbereich Schlüssel- und Methodenkompetenz, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich) → Wahlpflichtfach FIN Schlüssel- und Methodenkompetenz, ],
)
#pagebreak()
== Schlüssel- und Methodenkompetenz in der IT-Sicherheit (Übung)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Schlüssel- und Methodenkompetenz → Wahlbereich Schlüssel- und Methodenkompetenz, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Schlüssel- und Methodenkompetenz → Wahlbereich Schlüssel- und Methodenkompetenz, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Schlüssel- und Methodenkompetenz → Wahlbereich Schlüssel- und Methodenkompetenz, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich) → Wahlpflichtfach FIN Schlüssel- und Methodenkompetenz, ],
)
#pagebreak()
== Seminar Vernetzte Systeme
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Seminar, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Seminar, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Seminar, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Seminar, ],
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Interdisziplinäres Teamprojekt, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Schwerpunkt Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt, ],
)
#pagebreak()
== Seminar zur Verhaltensökonomie (21165)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Katalog WW → Accounting, ],
)
#pagebreak()
== Seminar: Prinzipal-Agenten Konflikte in und von Wirtschaftsprüfungsgesellschaften (23972)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Katalog WW → Accounting, ],
)
#pagebreak()
== Simulation Project Teammeeting
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | BIBA-INF D     ], [Bilinguale Informatik, Deutsche Verlaufsvariante (BiBa-Inf D;B)], [Schlüssel- und Methodenkompetenz, ],
[B          | BIBA-INF E     ], [Bilinguale Informatik, Englische Verlaufsvariante (BiBa-Inf E;B)], [Schlüssel- und Methodenkompetenz, ],
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik, Schlüssel- und Methodenkompetenz → Wahlbereich Schlüssel- und Methodenkompetenz, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikvertiefung, Schlüssel- und Methodenkompetenz → Wahlbereich Schlüssel- und Methodenkompetenz, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, Schlüssel- und Methodenkompetenz → Wahlbereich Schlüssel- und Methodenkompetenz, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich), ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Interdisziplinäres Teamprojekt, ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Applied Data Science, ],
[M - ALT    | DKE            ], [Data & Knowledge Engineering - Master (DKE;M - alt)], [Applications, ],
)
#pagebreak()
== Simulation Project [102616]
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | BIBA-INF D     ], [Bilinguale Informatik, Deutsche Verlaufsvariante (BiBa-Inf D;B)], [Schlüssel- und Methodenkompetenz, ],
[B          | BIBA-INF E     ], [Bilinguale Informatik, Englische Verlaufsvariante (BiBa-Inf E;B)], [Schlüssel- und Methodenkompetenz, ],
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik, Schlüssel- und Methodenkompetenz → Wahlbereich Schlüssel- und Methodenkompetenz, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikvertiefung, Schlüssel- und Methodenkompetenz → Wahlbereich Schlüssel- und Methodenkompetenz, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, Schlüssel- und Methodenkompetenz → Wahlbereich Schlüssel- und Methodenkompetenz, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich), ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Interdisziplinäres Teamprojekt, Digital Engineering-Projekt, ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Applied Data Science, ],
[M - ALT    | DKE            ], [Data & Knowledge Engineering - Master (DKE;M - alt)], [Applications, ],
)
#pagebreak()
== Soft Skills für Masterstudierende (Schlüsselkompetenzen III)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Schlüssel- und Methodenkompetenz, ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Fundamentals of Data Science, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Schlüssel- und Methodenkompetenz, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Schlüssel- und Methodenkompetenz, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Schwerpunkt Schlüssel- und Methodenkompetenz, ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Schlüssel- und Methodenkompetenz, ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Fundamentals of Data Science, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Schlüssel- und Methodenkompetenz, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Schlüssel- und Methodenkompetenz, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Schwerpunkt Schlüssel- und Methodenkompetenz, ],
)
#pagebreak()
== Software Development Project (Prüfungsblock)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | BIBA-INF D     ], [Bilinguale Informatik, Deutsche Verlaufsvariante (BiBa-Inf D;B)], [Schlüssel- und Methodenkompetenz, ],
[B          | BIBA-INF E     ], [Bilinguale Informatik, Englische Verlaufsvariante (BiBa-Inf E;B)], [Schlüssel- und Methodenkompetenz, ],
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Schlüssel- und Methodenkompetenz, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Schlüssel- und Methodenkompetenz, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Schlüssel- und Methodenkompetenz, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Schlüssel- und Methodenkompetenz, ],
)
#pagebreak()
== Software Development Project (Ü)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | BIBA-INF D     ], [Bilinguale Informatik, Deutsche Verlaufsvariante (BiBa-Inf D;B)], [Schlüssel- und Methodenkompetenz, ],
[B          | BIBA-INF E     ], [Bilinguale Informatik, Englische Verlaufsvariante (BiBa-Inf E;B)], [Schlüssel- und Methodenkompetenz, ],
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Schlüssel- und Methodenkompetenz, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Schlüssel- und Methodenkompetenz, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Schlüssel- und Methodenkompetenz, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Schwerpunkt Schlüssel- und Methodenkompetenz, ],
)
#pagebreak()
== Softwareprojekt VR/AR
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Schlüssel- und Methodenkompetenz → Softwareprojekt zum IT-Projektmanagement, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Schlüssel- und Methodenkompetenz → Softwareprojekt zum IT-Projektmanagement, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Schlüssel- und Methodenkompetenz → Softwareprojekt zum IT-Projektmanagement, ],
[M          | VC             ], [Visual Computing - Master (VC;M)], [Key and Methodological Competencies (SMK), ],
)
#pagebreak()
== Softwareprojekte AG VC
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Schlüssel- und Methodenkompetenz → Softwareprojekt zum IT-Projektmanagement, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Schlüssel- und Methodenkompetenz → Softwareprojekt zum IT-Projektmanagement, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Schlüssel- und Methodenkompetenz → Softwareprojekt zum IT-Projektmanagement, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten (Pflichtbereich) → 4. Semester → Softwareprojekt zum IT-Projektmanagement, ],
)
#pagebreak()
== Sprachverarbeitung
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Anwendungsfach → Bildinformationstechnik, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Fachliche Spezialisierung, ],
)
#pagebreak()
== Studienabschlusskolloquium
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Berufspraktikum/Bachelorarbeit, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Thesis, ],
)
#pagebreak()
== Studienabschlusskolloquium AG Simulation
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Berufspraktikum/Bachelorarbeit, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Berufspraktikum/Bachelorarbeit, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Berufspraktikum/Bachelorarbeit, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Berufspraktikum/Bachelorarbeit, ],
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Thesis, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Master Thesis, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Thesis, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Thesis, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Thesis, ],
[M - ALT    | DKE            ], [Data & Knowledge Engineering - Master (DKE;M - alt)], [Thesis, ],
)
#pagebreak()
== Studienabschlusskolloquium AG Visual Computing
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Berufspraktikum/Bachelorarbeit, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Berufspraktikum/Bachelorarbeit, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Berufspraktikum/Bachelorarbeit, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Berufspraktikum/Bachelorarbeit, ],
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Thesis, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Master Thesis, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Thesis, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Thesis, ],
[M          | VC             ], [Visual Computing - Master (VC;M)], [Master’s thesis, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Thesis, ],
[M - ALT    | DKE            ], [Data & Knowledge Engineering - Master (DKE;M - alt)], [Thesis, ],
)
#pagebreak()
== Studienabschlusskolloquium AG Visualisierung
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Berufspraktikum/Bachelorarbeit, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Berufspraktikum/Bachelorarbeit, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Berufspraktikum/Bachelorarbeit, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Berufspraktikum/Bachelorarbeit, ],
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Thesis, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Master Thesis, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Thesis, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Thesis, ],
[M          | VC             ], [Visual Computing - Master (VC;M)], [Master’s thesis, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Thesis, ],
[M - ALT    | DKE            ], [Data & Knowledge Engineering - Master (DKE;M - alt)], [Thesis, ],
)
#pagebreak()
== Systemintegration von Leistungselektronik
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Ingenieurbereich → Elektrotechnik (IB-ET), ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Ingenieurbereich → Elektrotechnik, ],
)
#pagebreak()
== Teamproject: RoboCup\@Work - robOTTO
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Schlüssel- und Methodenkompetenz → Softwareprojekt zum IT-Projektmanagement, Schlüssel- und Methodenkompetenz → Wahlbereich Schlüssel- und Methodenkompetenz, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Schlüssel- und Methodenkompetenz → Softwareprojekt zum IT-Projektmanagement, Schlüssel- und Methodenkompetenz → Wahlbereich Schlüssel- und Methodenkompetenz, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Schlüssel- und Methodenkompetenz → Softwareprojekt zum IT-Projektmanagement, Schlüssel- und Methodenkompetenz → Wahlbereich Schlüssel- und Methodenkompetenz, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten (Pflichtbereich) → 4. Semester → Softwareprojekt zum IT-Projektmanagement, Gestalten und Anwenden (Wahlpflichtbereich) → Wahlpflichtfach FIN Schlüssel- und Methodenkompetenz, ],
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Interdisziplinäres Teamprojekt, Digital Engineering-Projekt, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Schwerpunkt Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt, ],
)
#pagebreak()
== Technische Aspekte der IT-Sicherheit (Übung)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikvertiefung, Informatikprofile → ForensikDesign\@Informatik → Katalog A: Forensische Designprinzipien, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich), ],
)
#pagebreak()
== Technische Informatik II
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatik und Mathematik (Kern- und Pflichtbereich) → 4. Semester, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Informatik und Mathematik (Kern- und Pflichtbereich) → 4. Semester, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich), ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Informatik, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatik und Mathematik (Kern- und Pflichtbereich) → 4. Semester, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Informatik und Mathematik (Kern- und Pflichtbereich) → 4. Semester, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich), ],
)
#pagebreak()
== Technische Thermodynamik II
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Ingenieurbereich → Verfahrenstechnik (IB-VT), ],
)
#pagebreak()
== Theoretische Elektrotechnik  (2 Ü)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Fachliche Spezialisierung, ],
)
#pagebreak()
== Theoretische Elektrotechnik  (V)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Fachliche Spezialisierung, ],
)
#pagebreak()
== Transport phenomena in granular, particulate and porous media
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Fachliche Spezialisierung, ],
)
#pagebreak()
== Unternehmenssimulation iDecor
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Schlüssel- und Methodenkompetenz → Trainingsmodul, ],
)
#pagebreak()
== VLBA:  System Architectures
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Informatik, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Fachliche Spezialisierung, ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Applied Data Science, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Informatik, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Bereich Informatik, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Katalog WIF, ],
[M - ALT    | DKE            ], [Data & Knowledge Engineering - Master (DKE;M - alt)], [Applications, ],
)
#pagebreak()
== VLBA: System Architectures
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Informatik, ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Applied Data Science, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Informatik, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Bereich Informatik, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Katalog WIF, ],
)
#pagebreak()
== Virtual and Augmented Reality
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Computervisualistik, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Informatikvertiefung, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Bereich Informatik, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Gestalten und Anwenden (Wahlpflichtbereich), ],
[M          | VC             ], [Visual Computing - Master (VC;M)], [Mandatory area, ],
)
#pagebreak()
== WTP Praktikum IT-Security
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Informatik, Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Methoden der Informatik, Interdisziplinäres Teamprojekt, ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Applied Data Science, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Informatik, Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Bereich Informatik, Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Katalog INF, Schwerpunkt Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt, ],
[M - ALT    | DKE            ], [Data & Knowledge Engineering - Master (DKE;M - alt)], [Applications, ],
)
#pagebreak()
== Wiss. Teamprojekt/Laborpraktikum DKE
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Schwerpunkt Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt, ],
)
#pagebreak()
== Wissenschaftliches Individualprojekt - ESS
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Informatik, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Informatik, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Bereich Informatik, ],
)
#pagebreak()
== Wissenschaftliches Individualprojekt IT-Sicherheit
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Informatik, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Methoden der Informatik, Interdisziplinäres Teamprojekt, ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Applied Data Science, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Informatik, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Bereich Informatik, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Katalog INF, ],
[M - ALT    | DKE            ], [Data & Knowledge Engineering - Master (DKE;M - alt)], [Applications, ],
)
#pagebreak()
== Wissenschaftliches Individualprojekt NetSys
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Interdisziplinäres Teamprojekt, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Schwerpunkt Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt, ],
)
#pagebreak()
== Wissenschaftliches Seminar Wirtschaftsinformatik (5 CP) (neue SPO)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Seminar, Schlüssel- und Methodenkompetenz, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Seminar, Schlüssel- und Methodenkompetenz, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Seminar, Schlüssel- und Methodenkompetenz, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Seminar, Schlüssel- und Methodenkompetenz, ],
)
#pagebreak()
== Wissenschaftliches Seminar Wirtschaftsinformatik (alte SPO)
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Computervisualistik - Bachelor (CV;B)], [Schlüssel- und Methodenkompetenz, ],
[B          | INF            ], [Informatik - Bachelor (INF;B)], [Schlüssel- und Methodenkompetenz, ],
[B          | INGINF         ], [Ingenieurinformatik - Bachelor (IngINF;B)], [Schlüssel- und Methodenkompetenz, ],
[B          | WIF            ], [Wirtschaftsinformatik - Bachelor (WIF; B)], [Schlüssel- und Methodenkompetenz, ],
)
#pagebreak()
== Wissenschaftliches Teamprojekt ESS - Outdoor-Roboter
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Interdisziplinäres Teamprojekt, ],
[M          | DKE            ], [Data & Knowledge Engineering - Master (DKE;M)], [Applied Data Science, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt, ],
[M - ALT    | DKE            ], [Data & Knowledge Engineering - Master (DKE;M - alt)], [Models, ],
)
#pagebreak()
== Wissenschaftliches Teamprojekt NetSys
=== LSF
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | CV             ], [Computervisualistik - Master (CV;M)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt, ],
[M          | DIGIENG        ], [Digital Engineering - Master (DigiEng;M)], [Interdisziplinäres Teamprojekt, ],
[M          | INF            ], [Informatik - Master (INF;M)], [Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt, ],
[M          | INGINF         ], [Ingenieurinformatik - Master (IngINF;M)], [Bereich Informatik, Schlüssel- und Methodenkompetenz → Wissenschaftliches Teamprojekt, ],
[M          | WIF            ], [Wirtschaftsinformatik - Master (WIF;M)], [Katalog INF, ],
)
#pagebreak()
= NextCloud only
#pagebreak()
==  Investition und Finanzierung
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Wirtschaftsinformatik Pflicht (SPO 2027), ],
)
#pagebreak()
== AI Ethics, Data Privacy, and Intellectual Property in IT
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Recht - Wahlpflicht, ],
)
#pagebreak()
== Advanced Interactive Information Organization
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Methoden der Informatik, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Learning Methods and Models for Data Science, Data Processing for Data Science, Applied Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, Schlüssel- und Methodenkompetenzen, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, Schlüssel- und Methodenkompetenzen, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, Schlüssel- und Methodenkompetenzen, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, Schlüssel- und Methodenkompetenzen, ],
)
#pagebreak()
== Advanced Programming in Computational Intelligence in Games
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Applied Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, ],
)
#pagebreak()
== Advanced Topics in Deep Learning (Bachelor)
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, Studienprofil: Künstliche Intelligenz, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, ],
)
#pagebreak()
== Advanced Topics in Deep Learning (Master)
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Methoden der Informatik, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Learning Methods and Models for Data Science, Data Processing for Data Science, Applied Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, ],
)
#pagebreak()
== Advanced Topics in Machine Learning
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Methoden der Informatik, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Learning Methods and Models for Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, ],
)
#pagebreak()
== Advanced Topics in Networking
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Methoden der Informatik, Fachliche Spezialisierung, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, ],
)
#pagebreak()
== Algorithm Engineering
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Grundlagen Informatik, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Applied Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, ],
)
#pagebreak()
== Algorithmen und Programmierung
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
)
#pagebreak()
== Anwendungssoftware für Bildungsstudiengänge
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
)
#pagebreak()
== Applied Discrete Modelling
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Fachliche Spezialisierung, Informatik Wahlpflicht (SPO 2027), ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Learning Methods and Models for Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, Informatik Wahlpflicht (SPO 2027), ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, Computer Science (SPO 2027), ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, Informatik Wahlpflicht (SPO 2027), ],
)
#pagebreak()
== Ausgewählte Algorithmen der Computergraphik
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Visual Computing, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, ],
)
#pagebreak()
== Bachelor-Projekt
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Studienprofil: Webgründer, Abschlussmodule, ],
)
#pagebreak()
== Bachelorarbeit
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Abschlussmodule, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Abschlussmodule, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Abschlussmodule, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Abschlussmodule, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Abschlussmodule, ],
)
#pagebreak()
== Bachelorarbeit (dual)
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Abschlussmodule, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Abschlussmodule, ],
)
#pagebreak()
== Bachelorseminar Predictive Maintenance
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, Studienprofil: Künstliche Intelligenz, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, ],
)
#pagebreak()
== Berufspraktikum
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Abschlussmodule, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Abschlussmodule, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Abschlussmodule, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Abschlussmodule, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Abschlussmodule, ],
)
#pagebreak()
== Betriebliches Rechnungswesen
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Verstehen - Pflicht, Wirtschaftswissenschaften Pflicht  (SPO 2027), ],
)
#pagebreak()
== Betriebssysteme für Bildungsstudiengänge
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
)
#pagebreak()
== Biometrics Project
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Computervisualistik - Wahlpflicht, Computervisualistik Wahlpflicht (SPO 2027), ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, Studienprofil: Forensik Design, Informatik Wahlpflicht (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
)
#pagebreak()
== Business Informatics Research: perspectives and outcomes
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Wirtschaftsinformatik, ],
)
#pagebreak()
== Bürgerliches Recht
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Recht - Wahlpflicht, Wirtschaftswissenschaften Wahlpflicht  (SPO 2027), ],
)
#pagebreak()
== Clean Code Development
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Methoden des Digital Engineering, Methoden der Informatik, Fachliche Spezialisierung, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Applied Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, Schlüssel- und Methodenkompetenzen, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, Schlüssel- und Methodenkompetenzen, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, Schlüssel- und Methodenkompetenzen, ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, Schlüssel- und Methodenkompetenzen, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, Schlüssel- und Methodenkompetenzen, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, Schlüssel- und Methodenkompetenzen, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, Schlüssel- und Methodenkompetenzen, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, Schlüssel- und Methodenkompetenzen, ],
)
#pagebreak()
== Compilerbau
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, Computervisualistik Wahlpflicht (SPO 2027), ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
)
#pagebreak()
== Computational Geometry
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Methoden der Informatik, Informatik Wahlpflicht (SPO 2027), ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Data Processing for Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, Informatik Wahlpflicht (SPO 2027), ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Visual Computing, Visual Computing (SPO 2027), ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, Informatik Wahlpflicht (SPO 2027), ],
)
#pagebreak()
== Computational Intelligence in Games
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, Anwendungsfach - Computer Games, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, Studienprofil: Computer Games, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, ],
)
#pagebreak()
== Computer Aided Geometric Design
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Anwendungsfach - Computer Games, Computervisualistik - Wahlpflicht, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, Studienprofil: Computer Games, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, ],
)
#pagebreak()
== Computer Graphics - an Introduction
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Grundlagen Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Visual Computing, ],
)
#pagebreak()
== Computer-Assisted Surgery
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Visual Computing, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Anwendungsfach - Medizintechnik, Computervisualistik - Wahlpflicht, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, ],
)
#pagebreak()
== Computergestützte Diagnose und Therapie
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Anwendungsfach - Medizintechnik, Computervisualistik - Wahlpflicht, ],
)
#pagebreak()
== Computernetze 1
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, Studienprofil: Forensik Design, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, ],
)
#pagebreak()
== Crafting Success: The Art of Business Process Management
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Human Factors, Fachliche Spezialisierung, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Applied Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Wirtschaftsinformatik, ],
)
#pagebreak()
== Data Engineering
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
)
#pagebreak()
== Data Management for Engineering Applications
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Methoden des Digital Engineering, ],
)
#pagebreak()
== Data Mining II - Advanced Topics in Data Mining
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Methoden der Informatik, Fachliche Spezialisierung, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Learning Methods and Models for Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, ],
)
#pagebreak()
== Data Mining – Einführung in Data Mining
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, Studienprofil: Künstliche Intelligenz, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Verstehen und Gestalten - Wahlpflicht, Gestalten und Anwenden - Wahlpflicht, ],
)
#pagebreak()
== Data Science with Python
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Methoden der Informatik, Interdisziplinäres Team-Projekt, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Applied Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, Schlüssel- und Methodenkompetenzen, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, Schlüssel- und Methodenkompetenzen, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, Schlüssel- und Methodenkompetenzen, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, Schlüssel- und Methodenkompetenzen, ],
)
#pagebreak()
== Data Science with R
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Methoden der Informatik, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Learning Methods and Models for Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, ],
)
#pagebreak()
== Data Warehouse Technologies
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Fachliche Spezialisierung, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Data Processing for Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Wirtschaftsinformatik, Informatik, ],
)
#pagebreak()
== Database Concepts
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Grundlagen Informatik, ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik I - Pflicht, Kernmodule (SPO 2027), ],
)
#pagebreak()
== Datenbanken 1
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik I - Pflicht, Kernmodule (SPO 2027), ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik I - Pflicht, Kernmodule (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik I - Pflicht, Kernmodule (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik I - Pflicht, Kernmodule (SPO 2027), ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Anwenden - Pflicht, Kernmodule (SPO 2027), ],
)
#pagebreak()
== Datenbanken 2
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, Studienprofil: Forensik Design, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Methoden der Informatik, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Data Processing for Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, ],
)
#pagebreak()
== Datenmanagement
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
)
#pagebreak()
== Deep Learning für Ingenieure
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, Anwendungsfach - Computer Games, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, Studienprofil: Computer Games, Studienprofil: Künstliche Intelligenz, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, ],
)
#pagebreak()
== Deutsch als Fremdsprache A2 BiBa
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Sprache - Englischer Track, Sprache - Englischer Track (SPO 2027), ],
)
#pagebreak()
== Deutsch als Fremdsprache B1 BiBa
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Sprache - Englischer Track, Sprache - Englischer Track (SPO 2027), ],
)
#pagebreak()
== Deutsch als Fremdsprache B2 BiBa
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Sprache - Englischer Track, Sprache - Englischer Track (SPO 2027), ],
)
#pagebreak()
== Didaktik der Informatik I
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
)
#pagebreak()
== Didaktik der Informatik II
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
)
#pagebreak()
== Digital Engineering Project
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Digital Engineering-Projekt, Schlüssel- und Methodenkompetenz (SPO 2027), Projekte (SPO 2027), ],
)
#pagebreak()
== Digitale Medien im Unterricht
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Allgemeine Visualistik, ],
)
#pagebreak()
== Digitalhandwerk
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Schlüssel- und Methodenkompetenzen, Wissenschaftliches Seminar, FIN SMK, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Schlüssel- und Methodenkompetenzen, Wissenschaftliches Seminar, FIN SMK, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Schlüssel- und Methodenkompetenzen, Wissenschaftliches Seminar, FIN SMK, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Schlüssel- und Methodenkompetenzen, Wissenschaftliches Seminar, FIN SMK, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Verstehen und Gestalten - Wahlpflicht, Gestalten und Anwenden - Wahlpflicht, Schlüssel- und Methodenkompetenzen, Wissenschaftliches Seminar, ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Human Factors, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Applied Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Wirtschaftsinformatik, Informatik, ],
)
#pagebreak()
== Digitalisierung und Politik
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Schlüssel- und Methodenkompetenzen, Wissenschaftliches Seminar, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Schlüssel- und Methodenkompetenzen, Wissenschaftliches Seminar, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Schlüssel- und Methodenkompetenzen, Wissenschaftliches Seminar, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Schlüssel- und Methodenkompetenzen, Wissenschaftliches Seminar, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Schlüssel- und Methodenkompetenzen, Wissenschaftliches Seminar, ],
)
#pagebreak()
== Distributed Data Management
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Fachliche Spezialisierung, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Data Processing for Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, ],
)
#pagebreak()
== Einführung in Digitale Spiele
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Anwendungsfach - Computer Games, Computervisualistik - Wahlpflicht, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, Studienprofil: Computer Games, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, ],
)
#pagebreak()
== Einführung in das Wissenschaftliche Rechnen
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, ],
)
#pagebreak()
== Einführung in die Betriebswirtschaftslehre
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Verstehen - Pflicht, Wirtschaftswissenschaften Pflicht  (SPO 2027), ],
)
#pagebreak()
== Einführung in die Informatik
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik I - Pflicht, Kernmodule (SPO 2027), ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik I - Pflicht, Kernmodule (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik I - Pflicht, Kernmodule (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik I - Pflicht, Kernmodule (SPO 2027), ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten - Pflicht, Kernmodule (SPO 2027), ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik I - Pflicht, Kernmodule (SPO 2027), ],
)
#pagebreak()
== Einführung in die Informatik (für BiBa)
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik I - Pflicht, Kernmodule (SPO 2027), ],
)
#pagebreak()
== Einführung in die Informatik - Algorithmen und Datenstrukturen I
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
)
#pagebreak()
== Einführung in die Informatik I
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
)
#pagebreak()
== Einführung in die Volkswirtschaftslehre
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Verstehen - Pflicht, Wirtschaftswissenschaften Pflicht  (SPO 2027), ],
)
#pagebreak()
== Einführung in die Wirtschaftsinformatik
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Verstehen - Pflicht, Einführung in die Wirtschaftsinformatik - Wintermodul, ],
)
#pagebreak()
== Einführung in die Wissensrepräsentation
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, Computervisualistik Wahlpflicht (SPO 2027), ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
)
#pagebreak()
== English TopUp BiBa 1
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Sprache - Englischer Track, Sprache - Deutscher Track, Sprache - Englischer Track (SPO 2027), Sprache - Deutscher Track (SPO 2027), ],
)
#pagebreak()
== English TopUp BiBa 2
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Sprache - Englischer Track, Sprache - Deutscher Track, Sprache - Englischer Track (SPO 2027), Sprache - Deutscher Track (SPO 2027), ],
)
#pagebreak()
== Entwurf, Organisation und Durchführung eines Programmierwettbewerbs
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Schlüssel- und Methodenkompetenzen, FIN SMK, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Schlüssel- und Methodenkompetenzen, FIN SMK, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Schlüssel- und Methodenkompetenzen, FIN SMK, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Schlüssel- und Methodenkompetenzen, FIN SMK, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Schlüssel- und Methodenkompetenzen, ],
)
#pagebreak()
== Estimation for Autonomous Mobile Robots
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Methoden des Digital Engineering, Methoden der Informatik, Fachliche Spezialisierung, Informatik Wahlpflicht (SPO 2027), Digital Engineering (SPO 2027), Engineering Specialization (SPO 2027), ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Applied Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, Informatik Wahlpflicht (SPO 2027), ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, Ingenieurinformatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, Computer Science (SPO 2027), ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, Informatik Wahlpflicht (SPO 2027), ],
)
#pagebreak()
== Ethische Herausforderungen im Digitalen Zeitalter
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Schlüssel- und Methodenkompetenzen, FIN SMK, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Schlüssel- und Methodenkompetenzen, FIN SMK, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Schlüssel- und Methodenkompetenzen, FIN SMK, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Schlüssel- und Methodenkompetenzen, FIN SMK, ],
)
#pagebreak()
== Eudaimonic Interaction Design
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Human Factors, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Learning Methods and Models for Data Science, Applied Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, ],
)
#pagebreak()
== Evolutionary Multi-Objective Optimization
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Methoden der Informatik, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Learning Methods and Models for Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, ],
)
#pagebreak()
== Filmseminar Informatik und Ethik
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, Schlüssel- und Methodenkompetenzen, ],
)
#pagebreak()
== Game Design – Grundlagen
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, Anwendungsfach - Computer Games, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, Studienprofil: Computer Games, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, ],
)
#pagebreak()
== Grundlagen der Bildverarbeitung (Bachelor)
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik I - Pflicht, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, Studienprofil: Computer Games, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, ],
)
#pagebreak()
== Grundlagen der Computer Vision	
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Computervisualistik - Pflicht, ],
)
#pagebreak()
== Grundlagen der Informatik für Ingenieure
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
)
#pagebreak()
== Grundlagen der Informatik für Ingenieure - PNK
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
)
#pagebreak()
== Grundlagen der Theoretischen Informatik
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Mathematik / Theoretische Informatik, Computervisualistik Pflicht (SPO 2027), ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Mathematik / Theoretische Informatik, Aufbaumodule (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Mathematik / Theoretische Informatik, Aufbaumodule (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Mathematik / Theoretische Informatik, Ingenieurinformatik Pflicht (SPO 2027), ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Verstehen und Gestalten - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Mathematik / Theoretische Informatik, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Mathematik / Theoretische Informatik, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Mathematik / Theoretische Informatik, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Mathematik / Theoretische Informatik, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Verstehen und Gestalten - Wahlpflicht, ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Mathematik / Theoretische Informatik, Aufbaumodule (SPO 2027), ],
)
#pagebreak()
== Grundlagen der Theoretischen Informatik III
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, Informatik Wahlpflicht (SPO 2027), ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, Informatik Wahlpflicht (SPO 2027), ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, Computervisualistik - Wahlpflicht, Computervisualistik Wahlpflicht (SPO 2027), ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
)
#pagebreak()
== Grundlagen des Maschinellen Lernens
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, Anwendungsfach - Computer Games, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, Studienprofil: Computer Games, Studienprofil: Forensik Design, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, ],
)
#pagebreak()
== Hochintegrierte Enterprise Systeme
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Verstehen und Gestalten - Wahlpflicht, ],
)
#pagebreak()
== Human-Centred Approaches and Technologies
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Grundlagen Ingenieurwesen, Human Factors, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Applied Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, ],
)
#pagebreak()
== Human-Centred Manufacturing and Usability
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Fachliche Spezialisierung, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Applied Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, ],
)
#pagebreak()
== Human-Centred Natural Language Processing
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Human Factors, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Learning Methods and Models for Data Science, Data Processing for Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, ],
)
#pagebreak()
== IT-Forensik
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, Computervisualistik Wahlpflicht (SPO 2027), ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, Studienprofil: Forensik Design, Informatik Wahlpflicht (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
)
#pagebreak()
== IT-Security of Cyber-Physical Systems
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Applied Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, Informatik Wahlpflicht (SPO 2027), ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, Computer Science (SPO 2027), ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, Informatik Wahlpflicht (SPO 2027), ],
)
#pagebreak()
== IT-Softwareprojekt KMD
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, Schlüssel- und Methodenkompetenzen, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, Schlüssel- und Methodenkompetenzen, Studienprofil: Künstliche Intelligenz, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, Schlüssel- und Methodenkompetenzen, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, Schlüssel- und Methodenkompetenzen, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, Schlüssel- und Methodenkompetenzen, ],
)
#pagebreak()
== In-Memory und Cloud-Technologien
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Methoden der Informatik, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Data Processing for Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, ],
)
#pagebreak()
== In-Memory und Cloud-Technologien 1
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Methoden der Informatik, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Data Processing for Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, ],
)
#pagebreak()
== In-Memory und Cloud-Technologien 2
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Methoden der Informatik, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Data Processing for Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, ],
)
#pagebreak()
== Informatik, Mensch, Gesellschaft 
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
)
#pagebreak()
== Information Retrieval
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, ],
)
#pagebreak()
== Intelligente Systeme
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, Computervisualistik Wahlpflicht (SPO 2027), ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik II - Pflicht, Aufbaumodule (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik II - Pflicht, Aufbaumodule (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
)
#pagebreak()
== Intercultural Workshop: Studying at OvGU - Differences and Similarities in Turkish and German higher education
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
)
#pagebreak()
== Interdisziplinäres Teamprojekt
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Interdisziplinäres Team-Projekt, Schlüssel- und Methodenkompetenz (SPO 2027), Projekte (SPO 2027), ],
)
#pagebreak()
== Internes Rechnungswesen
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Wirtschaftswissenschaften Pflicht  (SPO 2027), ],
)
#pagebreak()
== Introduction to Computer Graphics
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Visual Computing, ],
)
#pagebreak()
== Introduction to Computer Science for Engineers
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Grundlagen Informatik, Informatik Grundlagen (SPO 2027), ],
)
#pagebreak()
== Introduction to Computer Vision (Master)
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Learning Methods and Models for Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Visual Computing, ],
)
#pagebreak()
== Introduction to Robotics
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, ],
)
#pagebreak()
== Introduction to Simulation
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, Anwendungsfach - Computer Games, Computervisualistik Wahlpflicht (SPO 2027), ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, Studienprofil: Computer Games, Informatik Wahlpflicht (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik II - Pflicht, Ingenieurinformatik Pflicht (SPO 2027), ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Grundlagen Informatik, Informatik Grundlagen (SPO 2027), ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Fundamentals of Data Science, ],
)
#pagebreak()
== Introduction to Software Engineering for Engineers
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Grundlagen Informatik, Informatik Grundlagen (SPO 2027), ],
)
#pagebreak()
== KI in Unternehmen
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, Wissenschaftliches Seminar, Computervisualistik Wahlpflicht (SPO 2027), ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, Studienprofil: Künstliche Intelligenz, Wissenschaftliches Seminar, Informatik Wahlpflicht (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, Wissenschaftliches Seminar, Informatik Wahlpflicht (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, Wissenschaftliches Seminar, Informatik Wahlpflicht (SPO 2027), ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Verstehen und Gestalten - Wahlpflicht, Wissenschaftliches Seminar, Wirtschaftsinformatik Wahlpflicht (SPO 2027), Informatik Wahlpflicht (SPO 2027), Einführung in die Wirtschaftsinformatik - Sommermodul, ],
)
#pagebreak()
== Learning Generative Models
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Methoden der Informatik, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Learning Methods and Models for Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, Studienprofil: Künstliche Intelligenz, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Verstehen und Gestalten - Wahlpflicht, ],
)
#pagebreak()
== Logik 2
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, Computervisualistik Wahlpflicht (SPO 2027), ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Verstehen und Gestalten - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Grundlagen Informatik, Informatik Grundlagen (SPO 2027), ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Fundamentals of Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, Informatik Wahlpflicht (SPO 2027), ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, Computer Science (SPO 2027), ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, Informatik Wahlpflicht (SPO 2027), ],
)
#pagebreak()
== MLOps for Small Language Model Applications
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Methoden der Informatik, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Applied Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Wirtschaftsinformatik, Informatik, ],
)
#pagebreak()
== Machine Learning
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Methoden der Informatik, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Fundamentals of Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, ],
)
#pagebreak()
== Mainframe Computing
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, Computervisualistik Wahlpflicht (SPO 2027), ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, Informatik Pflicht (SPO 2027), ],
)
#pagebreak()
== Marketing
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Wirtschaftswissenschaften Pflicht  (SPO 2027), ],
)
#pagebreak()
== Masterarbeit
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Masterarbeit, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Masterarbeit, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Masterarbeit, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Masterarbeit, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Masterarbeit, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Masterarbeit, ],
)
#pagebreak()
== Mathematik M1d
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Mathematik / Logik, Mathematik (SPO 2027), ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Mathematik / Logik, Mathematik (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Mathematik / Logik, Mathematik (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Mathematik / Logik, Mathematik (SPO 2027), ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Verstehen - Pflicht, Mathematik (SPO 2027), ],
)
#pagebreak()
== Mathematik M1e
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Mathematik / Logik, Mathematik (SPO 2027), ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Mathematik / Logik, Mathematik (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Mathematik / Logik, Mathematik (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Mathematik / Logik, Mathematik (SPO 2027), ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Verstehen - Pflicht, Mathematik (SPO 2027), ],
)
#pagebreak()
== Mathematik M2d
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Mathematik / Logik, Mathematik (SPO 2027), ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Mathematik / Logik, Mathematik (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Mathematik / Logik, Mathematik (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Mathematik / Logik, Mathematik (SPO 2027), ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Verstehen - Pflicht, Mathematik (SPO 2027), ],
)
#pagebreak()
== Mathematik M2e
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Mathematik / Logik, Mathematik (SPO 2027), ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Mathematik / Logik, Mathematik (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Mathematik / Logik, Mathematik (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Mathematik / Logik, Mathematik (SPO 2027), ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Verstehen - Pflicht, Mathematik (SPO 2027), ],
)
#pagebreak()
== Mathematik M3d
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Mathematik / Logik, Mathematik (SPO 2027), ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Mathematik / Logik, Mathematik (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Mathematik / Logik, Mathematik (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Mathematik / Logik, Mathematik (SPO 2027), ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Verstehen - Pflicht, Mathematik (SPO 2027), ],
)
#pagebreak()
== Mathematik M3e
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Mathematik / Logik, Mathematik (SPO 2027), ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Mathematik / Logik, Mathematik (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Mathematik / Logik, Mathematik (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Mathematik / Logik, Mathematik (SPO 2027), ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Verstehen - Pflicht, Mathematik (SPO 2027), ],
)
#pagebreak()
== Mathematik M5d
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Mathematik / Theoretische Informatik, Mathematik (SPO 2027), ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Mathematik / Theoretische Informatik, Mathematik (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Mathematik / Theoretische Informatik, Mathematik (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Mathematik / Theoretische Informatik, Mathematik (SPO 2027), ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Verstehen - Pflicht, Mathematik (SPO 2027), ],
)
#pagebreak()
== Mathematik M5e
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Mathematik / Theoretische Informatik, Mathematik (SPO 2027), ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Mathematik / Theoretische Informatik, Mathematik (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Mathematik / Theoretische Informatik, Mathematik (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Mathematik / Theoretische Informatik, Mathematik (SPO 2027), ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Verstehen - Pflicht, Mathematik (SPO 2027), ],
)
#pagebreak()
== Mobilkommunikation
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Fachliche Spezialisierung, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
)
#pagebreak()
== Modellierung
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik I - Pflicht, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik I - Pflicht, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik I - Pflicht, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik I - Pflicht, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten - Pflicht, ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik I - Pflicht, Informatik Wahlpflicht (SPO 2027), ],
)
#pagebreak()
== Modellierung und Simulation von Computernetzen
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Methoden der Informatik, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Applied Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, ],
)
#pagebreak()
== Modellierungstechnik und Softwareprojekt
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
)
#pagebreak()
== Multimedia and Security
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, Informatik Wahlpflicht (SPO 2027), ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, Computer Science (SPO 2027), ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, Informatik Wahlpflicht (SPO 2027), ],
)
#pagebreak()
== Musik Information Retrieval
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Methoden der Informatik, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Applied Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, ],
)
#pagebreak()
== Networkprogramming for IoT
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Technische Informatik, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Technische Informatik, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Technische Informatik, ],
)
#pagebreak()
== Netzwerke für Bildungsstudiengänge
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
)
#pagebreak()
== Neuro-Symbolic Integration
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Methoden der Informatik, Informatik Wahlpflicht (SPO 2027), ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Learning Methods and Models for Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, Informatik Wahlpflicht (SPO 2027), ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, Computer Science (SPO 2027), ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, Informatik Wahlpflicht (SPO 2027), ],
)
#pagebreak()
== OLD Advanced Topics of Predictive Maintenance
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Learning Methods and Models for Data Science, Data Processing for Data Science, Applied Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, Informatik Wahlpflicht (SPO 2027), ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Wirtschaftsinformatik, Informatik, ],
)
#pagebreak()
== Parallel Programming for Engineers
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
)
#pagebreak()
== Parallele Programmierung
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, Anwendungsfach - Computer Games, Computervisualistik Wahlpflicht (SPO 2027), ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, Studienprofil: Computer Games, Informatik Wahlpflicht (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
)
#pagebreak()
== Praktikum IT Sicherheit
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Methoden der Informatik, Interdisziplinäres Team-Projekt, Digital Engineering-Projekt, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Applied Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, Informatik Wahlpflicht (SPO 2027), ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, Computer Science (SPO 2027), ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, Informatik Wahlpflicht (SPO 2027), ],
)
#pagebreak()
== Praxisphase im letzten Semester (dual)
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Abschlussmodule, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Abschlussmodule, ],
)
#pagebreak()
== Principles and Practices of Scientific Work and Soft Skills
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Human Factors, Schlüssel- und Methodenkompetenz (SPO 2027), ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Fundamentals of Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Schlüssel- und Methodenkompetenz (SPO 2027), ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Schlüssel- und Methodenkompetenz (SPO 2027), ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Schlüssel- und Methodenkompetenz (SPO 2027), ],
)
#pagebreak()
== Propädeutikum Informatik
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Computervisualistik Pflicht (SPO 2027), ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Aufbaumodule (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Aufbaumodule (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Ingenieurinformatik Pflicht (SPO 2027), ],
)
#pagebreak()
== Prozessmanagement
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Applied Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Wirtschaftsinformatik, ],
)
#pagebreak()
== Qualitätsmanagementsysteme
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Applied Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Wirtschaftsinformatik, ],
)
#pagebreak()
== Recent Topics in Business Informatics
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Human Factors, Methoden der Informatik, Fachliche Spezialisierung, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Applied Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, Schlüssel- und Methodenkompetenzen, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Wirtschaftsinformatik, Schlüssel- und Methodenkompetenzen, ],
)
#pagebreak()
== Recommenders - Bachelorseminar
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, Schlüssel- und Methodenkompetenzen, Wissenschaftliches Seminar, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, Schlüssel- und Methodenkompetenzen, Studienprofil: Künstliche Intelligenz, Wissenschaftliches Seminar, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, Schlüssel- und Methodenkompetenzen, Wissenschaftliches Seminar, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, Schlüssel- und Methodenkompetenzen, Wissenschaftliches Seminar, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, Schlüssel- und Methodenkompetenzen, Wissenschaftliches Seminar, ],
)
#pagebreak()
== Recommenders - Master level
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Methoden des Digital Engineering, Methoden der Informatik, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Learning Methods and Models for Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Wirtschaftsinformatik, ],
)
#pagebreak()
== Robust Geometric Computing
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Grundlagen Informatik, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Fundamentals of Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Visual Computing, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, ],
)
#pagebreak()
== Schlüsselkompetenzen Grundlagen
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Schlüssel- und Methodenkompetenzen, Kernmodule (SPO 2027), ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Schlüssel- und Methodenkompetenzen, Kernmodule (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Schlüssel- und Methodenkompetenzen, Kernmodule (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Schlüssel- und Methodenkompetenzen, Kernmodule (SPO 2027), ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Schlüssel- und Methodenkompetenzen, Kernmodule (SPO 2027), ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Schlüssel- und Methodenkompetenzen, Kernmodule (SPO 2027), ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Schlüssel- und Methodenkompetenzen, Kernmodule (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Schlüssel- und Methodenkompetenzen, Kernmodule (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Schlüssel- und Methodenkompetenzen, Kernmodule (SPO 2027), ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Schlüssel- und Methodenkompetenzen, Kernmodule (SPO 2027), ],
)
#pagebreak()
== Schlüsselkompetenzen Grundlagen (dual)
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Schlüssel- und Methodenkompetenzen, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Schlüssel- und Methodenkompetenzen, Kernmodule (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Schlüssel- und Methodenkompetenzen, Kernmodule (SPO 2027), ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Schlüssel- und Methodenkompetenzen, Kernmodule (SPO 2027), ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Schlüssel- und Methodenkompetenzen, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Schlüssel- und Methodenkompetenzen, Kernmodule (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Schlüssel- und Methodenkompetenzen, Kernmodule (SPO 2027), ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Schlüssel- und Methodenkompetenzen, Kernmodule (SPO 2027), ],
)
#pagebreak()
== Scientific Machine Learning for Simulations
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Methoden der Informatik, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Learning Methods and Models for Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Visual Computing, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, ],
)
#pagebreak()
== Scientific Project on Databases for Multi-Dimensional Data, Genomics, and modern Hardware
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Interdisziplinäres Team-Projekt, Fachliche Spezialisierung, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Applied Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Schlüssel- und Methodenkompetenzen, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Schlüssel- und Methodenkompetenzen, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Schlüssel- und Methodenkompetenzen, ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Schlüssel- und Methodenkompetenzen, FIN SMK, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Schlüssel- und Methodenkompetenzen, FIN SMK, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Schlüssel- und Methodenkompetenzen, FIN SMK, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Schlüssel- und Methodenkompetenzen, FIN SMK, ],
)
#pagebreak()
== Scientific Writing
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Human Factors, Fachliche Spezialisierung, Schlüssel- und Methodenkompetenz (SPO 2027), ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Applied Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Schlüssel- und Methodenkompetenzen, Schlüssel- und Methodenkompetenz (SPO 2027), ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Schlüssel- und Methodenkompetenzen, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Schlüssel- und Methodenkompetenzen, Schlüssel- und Methodenkompetenz (SPO 2027), ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Schlüssel- und Methodenkompetenzen, Schlüssel- und Methodenkompetenz (SPO 2027), ],
)
#pagebreak()
== Scrum-in-Practice
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, Schlüssel- und Methodenkompetenzen, FIN SMK, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, Schlüssel- und Methodenkompetenzen, FIN SMK, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, Schlüssel- und Methodenkompetenzen, FIN SMK, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, Schlüssel- und Methodenkompetenzen, FIN SMK, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Methoden der Informatik, Fachliche Spezialisierung, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Applied Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, Schlüssel- und Methodenkompetenzen, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, Schlüssel- und Methodenkompetenzen, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, Schlüssel- und Methodenkompetenzen, ],
)
#pagebreak()
== Selected Chapters of IT Security 1
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Methoden der Informatik, Fachliche Spezialisierung, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Applied Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, Schlüssel- und Methodenkompetenzen, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, Schlüssel- und Methodenkompetenzen, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, Schlüssel- und Methodenkompetenzen, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, Schlüssel- und Methodenkompetenzen, ],
)
#pagebreak()
== Selected Chapters of IT Security 2
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, Schlüssel- und Methodenkompetenzen, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, Schlüssel- und Methodenkompetenzen, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, Schlüssel- und Methodenkompetenzen, ],
)
#pagebreak()
== Selected Chapters of IT Security: Orchestration of Mechanisms and Tools
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Methoden der Informatik, Informatik Wahlpflicht (SPO 2027), ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Applied Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, Schlüssel- und Methodenkompetenzen, Informatik Wahlpflicht (SPO 2027), Schlüssel- und Methodenkompetenz (SPO 2027), ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, Schlüssel- und Methodenkompetenzen, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, Schlüssel- und Methodenkompetenzen, Computer Science (SPO 2027), Schlüssel- und Methodenkompetenz (SPO 2027), ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, Schlüssel- und Methodenkompetenzen, Informatik Wahlpflicht (SPO 2027), Schlüssel- und Methodenkompetenz (SPO 2027), ],
)
#pagebreak()
== Selected Chapters of IT Security: Prevention, Detection, Attribution and Reaction
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, Schlüssel- und Methodenkompetenzen, Informatik Wahlpflicht (SPO 2027), Schlüssel- und Methodenkompetenz (SPO 2027), ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, Schlüssel- und Methodenkompetenzen, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, Schlüssel- und Methodenkompetenzen, Informatik Wahlpflicht (SPO 2027), Schlüssel- und Methodenkompetenz (SPO 2027), ],
)
#pagebreak()
== Seminar 'Advanced Topics of KMD'
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Methoden der Informatik, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Learning Methods and Models for Data Science, Data Processing for Data Science, Applied Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, Schlüssel- und Methodenkompetenzen, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, Schlüssel- und Methodenkompetenzen, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Wirtschaftsinformatik, Informatik, Schlüssel- und Methodenkompetenzen, ],
)
#pagebreak()
== Seminar Advanced Estimation Methods for Autonomous Robotic Systems
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Methoden des Digital Engineering, Methoden der Informatik, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Applied Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, Schlüssel- und Methodenkompetenzen, Informatik Wahlpflicht (SPO 2027), Schlüssel- und Methodenkompetenz (SPO 2027), ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, Schlüssel- und Methodenkompetenzen, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, Schlüssel- und Methodenkompetenzen, Computer Science (SPO 2027), Schlüssel- und Methodenkompetenz (SPO 2027), ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, Schlüssel- und Methodenkompetenzen, Informatik Wahlpflicht (SPO 2027), Schlüssel- und Methodenkompetenz (SPO 2027), ],
)
#pagebreak()
== Seminar Interactive Information Organization
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Schlüssel- und Methodenkompetenzen, Wissenschaftliches Seminar, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Schlüssel- und Methodenkompetenzen, Wissenschaftliches Seminar, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Schlüssel- und Methodenkompetenzen, Wissenschaftliches Seminar, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Schlüssel- und Methodenkompetenzen, Wissenschaftliches Seminar, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Schlüssel- und Methodenkompetenzen, Wissenschaftliches Seminar, ],
)
#pagebreak()
== Seminar Robotik
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Schlüssel- und Methodenkompetenzen, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Schlüssel- und Methodenkompetenzen, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Schlüssel- und Methodenkompetenzen, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Schlüssel- und Methodenkompetenzen, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Schlüssel- und Methodenkompetenzen, ],
)
#pagebreak()
== Seminar on Advanced Topics of Predictive Maintenance
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Methoden des Digital Engineering, Methoden der Informatik, Digital Engineering (SPO 2027), Schlüssel- und Methodenkompetenz (SPO 2027), ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Learning Methods and Models for Data Science, Applied Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, Schlüssel- und Methodenkompetenzen, Informatik Wahlpflicht (SPO 2027), Schlüssel- und Methodenkompetenz (SPO 2027), ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, Schlüssel- und Methodenkompetenzen, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, Computer Science (SPO 2027), ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Wirtschaftsinformatik, Informatik, Schlüssel- und Methodenkompetenzen, Informatik Wahlpflicht (SPO 2027), Wirtschaftsinformatik (SPO 2027), Schlüssel- und Methodenkompetenz (SPO 2027), ],
)
#pagebreak()
== Sensor Networks Seminar
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Methoden des Digital Engineering, Methoden der Informatik, Fachliche Spezialisierung, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Applied Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, Schlüssel- und Methodenkompetenzen, Informatik Wahlpflicht (SPO 2027), Schlüssel- und Methodenkompetenz (SPO 2027), ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, Schlüssel- und Methodenkompetenzen, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Schlüssel- und Methodenkompetenzen, Schlüssel- und Methodenkompetenz (SPO 2027), ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, Schlüssel- und Methodenkompetenzen, Informatik Wahlpflicht (SPO 2027), Schlüssel- und Methodenkompetenz (SPO 2027), ],
)
#pagebreak()
== Simulation Project
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, Schlüssel- und Methodenkompetenzen, FIN SMK, Computervisualistik Wahlpflicht (SPO 2027), ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, Schlüssel- und Methodenkompetenzen, FIN SMK, Informatik Wahlpflicht (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, Schlüssel- und Methodenkompetenzen, FIN SMK, Informatik Wahlpflicht (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, Schlüssel- und Methodenkompetenzen, FIN SMK, Informatik Wahlpflicht (SPO 2027), ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
)
#pagebreak()
== Simulation, Animation und Simulationsprojekt
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
)
#pagebreak()
== Social Network Analysis (SNA): Theory and Application
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, ],
)
#pagebreak()
== Soft Skills für Masterstudierende
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Human Factors, Schlüssel- und Methodenkompetenz (SPO 2027), ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Schlüssel- und Methodenkompetenzen, Schlüssel- und Methodenkompetenz (SPO 2027), ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Schlüssel- und Methodenkompetenzen, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Schlüssel- und Methodenkompetenzen, Schlüssel- und Methodenkompetenz (SPO 2027), ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Schlüssel- und Methodenkompetenzen, Schlüssel- und Methodenkompetenz (SPO 2027), ],
)
#pagebreak()
== Software Engineering & IT-Projektmanagement
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik I - Pflicht, Kernmodule (SPO 2027), ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik I - Pflicht, Kernmodule (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik I - Pflicht, Kernmodule (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik I - Pflicht, Kernmodule (SPO 2027), ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, Kernmodule (SPO 2027), ],
)
#pagebreak()
== Software Engineering & IT-Projektmanagement (dual)
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik I - Pflicht, Kernmodule (SPO 2027), ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik I - Pflicht, Kernmodule (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik I - Pflicht, Kernmodule (SPO 2027), ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, Kernmodule (SPO 2027), ],
)
#pagebreak()
== Software Engineering for technical applications
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, ],
)
#pagebreak()
== Software Testing
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, Computervisualistik Wahlpflicht (SPO 2027), ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
)
#pagebreak()
== Software-Development for Industrial Robotics
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Methoden des Digital Engineering, Methoden der Informatik, Fachliche Spezialisierung, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Applied Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, Ingenieurinformatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, ],
)
#pagebreak()
== Software-Produktlinien
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Methoden der Informatik, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, Ingenieurinformatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, ],
)
#pagebreak()
== Softwareprojekt
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Schlüssel- und Methodenkompetenzen, Kernmodule (SPO 2027), ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Schlüssel- und Methodenkompetenzen, Kernmodule (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Schlüssel- und Methodenkompetenzen, Kernmodule (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Schlüssel- und Methodenkompetenzen, Kernmodule (SPO 2027), ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Schlüssel- und Methodenkompetenzen, Kernmodule (SPO 2027), ],
)
#pagebreak()
== Softwareprojekt (dual)
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Schlüssel- und Methodenkompetenzen, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Schlüssel- und Methodenkompetenzen, Kernmodule (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Schlüssel- und Methodenkompetenzen, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Schlüssel- und Methodenkompetenzen, Kernmodule (SPO 2027), ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Schlüssel- und Methodenkompetenzen, Kernmodule (SPO 2027), ],
)
#pagebreak()
== Softwareprojekt RIOT OS
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Schlüssel- und Methodenkompetenzen, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Schlüssel- und Methodenkompetenzen, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Schlüssel- und Methodenkompetenzen, ],
)
#pagebreak()
== Startup Engineering I
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Schlüssel- und Methodenkompetenzen, FIN SMK, Interdisziplinär (SPO 2027), ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Schlüssel- und Methodenkompetenzen, FIN SMK, Ergänzungsbereich (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Schlüssel- und Methodenkompetenzen, FIN SMK, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Schlüssel- und Methodenkompetenzen, FIN SMK, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, Wirtschaftsinformatik Wahlpflicht (SPO 2027), ],
)
#pagebreak()
== Startup Engineering II 
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, Informatik Wahlpflicht (SPO 2027), Schlüssel- und Methodenkompetenz (SPO 2027), Projekte (SPO 2027), ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, Informatik Wahlpflicht (SPO 2027), Schlüssel- und Methodenkompetenz (SPO 2027), Projekte (SPO 2027), ],
)
#pagebreak()
== Student Conference
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Human Factors, Fachliche Spezialisierung, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Applied Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Schlüssel- und Methodenkompetenzen, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Schlüssel- und Methodenkompetenzen, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Schlüssel- und Methodenkompetenzen, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Schlüssel- und Methodenkompetenzen, ],
)
#pagebreak()
== Swarm Intelligence
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Fachliche Spezialisierung, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Learning Methods and Models for Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, ],
)
#pagebreak()
== Technische Informatik 1
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, Computervisualistik Wahlpflicht (SPO 2027), ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Technische Informatik, Aufbaumodule (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Technische Informatik, Aufbaumodule (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Technische Informatik, Ingenieurinformatik Pflicht (SPO 2027), ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, Computervisualistik Wahlpflicht (SPO 2027), ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Technische Informatik, Aufbaumodule (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Technische Informatik, Aufbaumodule (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Technische Informatik, Ingenieurinformatik Pflicht (SPO 2027), ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
)
#pagebreak()
== Technische Informatik 2
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, Computervisualistik Wahlpflicht (SPO 2027), ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Technische Informatik, Aufbaumodule (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Technische Informatik, Aufbaumodule (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Technische Informatik, Ingenieurinformatik Pflicht (SPO 2027), ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, Computervisualistik Wahlpflicht (SPO 2027), ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Technische Informatik, Aufbaumodule (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Technische Informatik, Aufbaumodule (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Technische Informatik, Ingenieurinformatik Pflicht (SPO 2027), ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
)
#pagebreak()
== Technische Informatik für Bildungsstudiengänge I
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
)
#pagebreak()
== Technische Informatik für Bildungsstudiengänge II
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
)
#pagebreak()
== Three-Dimensional & Advanced Interaction
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Methoden der Informatik, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Applied Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Visual Computing, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, ],
)
#pagebreak()
== Topics in Algorithmics
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Methoden der Informatik, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Fundamentals of Data Science, Data Processing for Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, ],
)
#pagebreak()
== Transaction Processing
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Methoden der Informatik, Fachliche Spezialisierung, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Data Processing for Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, ],
)
#pagebreak()
== VLBA - Systemarchitekturen
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Fachliche Spezialisierung, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Applied Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Wirtschaftsinformatik, ],
)
#pagebreak()
== VLBA – Cloud DevOps Technologies
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Methoden der Informatik, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Data Processing for Data Science, Applied Data Science, ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Computer Science, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Wirtschaftsinformatik, Informatik, ],
)
#pagebreak()
== Virtual  and Augmented Reality I
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Anwendungsfach - Computer Games, Computervisualistik - Wahlpflicht, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, Studienprofil: Computer Games, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, ],
)
#pagebreak()
== Virtual and Augmented Reality I
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Visual Computing, ],
)
#pagebreak()
== Visual Analytics in Health Care
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Methoden der Informatik, Fachliche Spezialisierung, ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Applied Data Science, ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Visual Computing, ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Informatik, ],
)
#pagebreak()
== Visualization
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Computervisualistik - Pflicht, Computervisualistik Pflicht (SPO 2027), ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten und Anwenden - Wahlpflicht, Informatik Wahlpflicht (SPO 2027), ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Methoden der Informatik, Informatik Wahlpflicht (SPO 2027), ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Applied Data Science, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Visual Computing, Visual Computing (SPO 2027), ],
)
#pagebreak()
== Wahlpflichtfach FIN SMK
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Schlüssel- und Methodenkompetenzen, FIN SMK, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Schlüssel- und Methodenkompetenzen, FIN SMK, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Schlüssel- und Methodenkompetenzen, FIN SMK, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Schlüssel- und Methodenkompetenzen, FIN SMK, ],
)
#pagebreak()
== Werkzeuge für das wissenschaftliche Arbeiten
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Schlüssel- und Methodenkompetenzen, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Schlüssel- und Methodenkompetenzen, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Schlüssel- und Methodenkompetenzen, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Schlüssel- und Methodenkompetenzen, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Schlüssel- und Methodenkompetenzen, ],
)
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Schlüssel- und Methodenkompetenzen, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Schlüssel- und Methodenkompetenzen, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Schlüssel- und Methodenkompetenzen, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Schlüssel- und Methodenkompetenzen, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Schlüssel- und Methodenkompetenzen, ],
)
#pagebreak()
== Wissenschaftliches Individualprojekt
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Human Factors, Methoden des Digital Engineering, Methoden der Informatik, Fachliche Spezialisierung, Schlüssel- und Methodenkompetenz (SPO 2027), Projekte (SPO 2027), ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Learning Methods and Models for Data Science, Data Processing for Data Science, Applied Data Science, Projects (SPO 2027), ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, Schlüssel- und Methodenkompetenz (SPO 2027), Projekte (SPO 2027), ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, Ingenieurinformatik, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Visual Computing, Computer Science, Schlüssel- und Methodenkompetenz (SPO 2027), Projekte (SPO 2027), ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Wirtschaftsinformatik, Informatik, Schlüssel- und Methodenkompetenz (SPO 2027), Projekte (SPO 2027), ],
)
#pagebreak()
== Wissenschaftliches Individualprojekt (10 CP)
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Schlüssel- und Methodenkompetenz (SPO 2027), Projekte (SPO 2027), ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Applied Data Science, Projects (SPO 2027), ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Schlüssel- und Methodenkompetenz (SPO 2027), Projekte (SPO 2027), ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Schlüssel- und Methodenkompetenz (SPO 2027), Projekte (SPO 2027), ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Schlüssel- und Methodenkompetenz (SPO 2027), Projekte (SPO 2027), ],
)
#pagebreak()
== Wissenschaftliches Seminar
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Schlüssel- und Methodenkompetenzen, Wissenschaftliches Seminar, Kernmodule (SPO 2027), ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Schlüssel- und Methodenkompetenzen, Wissenschaftliches Seminar, Kernmodule (SPO 2027), ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Schlüssel- und Methodenkompetenzen, Wissenschaftliches Seminar, Kernmodule (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Schlüssel- und Methodenkompetenzen, Wissenschaftliches Seminar, Kernmodule (SPO 2027), ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Schlüssel- und Methodenkompetenzen, Wissenschaftliches Seminar, Kernmodule (SPO 2027), ],
)
#pagebreak()
== Wissenschaftliches Seminar (dual)
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Schlüssel- und Methodenkompetenzen, Wissenschaftliches Seminar, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Schlüssel- und Methodenkompetenzen, Wissenschaftliches Seminar, Kernmodule (SPO 2027), ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Schlüssel- und Methodenkompetenzen, Wissenschaftliches Seminar, Kernmodule (SPO 2027), ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Schlüssel- und Methodenkompetenzen, Wissenschaftliches Seminar, Kernmodule (SPO 2027), ],
)
#pagebreak()
== Wissenschaftliches Teamprojekt
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Interdisziplinäres Team-Projekt, Digital Engineering-Projekt, Schlüssel- und Methodenkompetenz (SPO 2027), Projekte (SPO 2027), ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Applied Data Science, Projects (SPO 2027), ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Informatik, Schlüssel- und Methodenkompetenzen, Schlüssel- und Methodenkompetenz (SPO 2027), Projekte (SPO 2027), ],
[M          | INGINF         ], [Verwendbarkeit M.Sc. INGINF], [Informatik, Ingenieurinformatik, Schlüssel- und Methodenkompetenzen, ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Schlüssel- und Methodenkompetenzen, Schlüssel- und Methodenkompetenz (SPO 2027), Projekte (SPO 2027), ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Wirtschaftsinformatik, Informatik, Schlüssel- und Methodenkompetenzen, Schlüssel- und Methodenkompetenz (SPO 2027), Projekte (SPO 2027), ],
)
#pagebreak()
== Wissenschaftliches Teamprojekt (10 CP)
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[M          | DE             ], [Verwendbarkeit M.Sc. DE], [Schlüssel- und Methodenkompetenz (SPO 2027), Projekte (SPO 2027), ],
[M          | DKE            ], [Verwendbarkeit M.Sc. DKE], [Projects (SPO 2027), ],
[M          | INF            ], [Verwendbarkeit M.Sc. INF], [Schlüssel- und Methodenkompetenz (SPO 2027), Projekte (SPO 2027), ],
[M          | VC             ], [Verwendbarkeit M.Sc. VC], [Schlüssel- und Methodenkompetenz (SPO 2027), Projekte (SPO 2027), ],
[M          | WIF            ], [Verwendbarkeit M.Sc. WIF], [Schlüssel- und Methodenkompetenz (SPO 2027), Projekte (SPO 2027), ],
)
#pagebreak()
== Wissensmanagement – Methoden und Werkzeuge
=== NextCloud
#table(columns: (10%, 30%, 60%), table.header([\#], [Studiengang], [Verwendbarkeiten]),
[B          | CV             ], [Verwendbarkeit B.Sc. CV], [Informatik - Wahlpflicht, ],
[B          | INF            ], [Verwendbarkeit B.Sc. INF], [Informatik - Wahlpflicht, ],
[B          | INF (BILINGUAL)], [Verwendbarkeit B.Sc. INF (bilingual)], [Informatik - Wahlpflicht, ],
[B          | INGINF         ], [Verwendbarkeit B.Sc. INGINF], [Informatik - Wahlpflicht, ],
[B          | WIF            ], [Verwendbarkeit B.Sc. WIF], [Gestalten - Pflicht, ],
)
#pagebreak()
