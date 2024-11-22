module unknown
open util/integer [] as integer
open util/ordering [Grade] as ordering
sig Person {
teaches: (set Course),
enrolled: (set Course),
projects: (set Project)
}
sig Professor in Person {}
sig Student in Person {}
sig Course {
projects: (set Project),
grades: (Person->Grade)
}
sig Project {}
sig Grade {}
pred inv14[] {
(all c: (one Course),s1: (one (enrolled.c)),s2: (one ((enrolled.c) - s1)),p1: (one (c.projects)),p2: (one ((c.projects) & p1)) {
(((p1 in (s1.projects)) && (p1 in (s2.projects)) && (p2 in (s1.projects))) => (p2 !in (s2.projects)))
})
}





