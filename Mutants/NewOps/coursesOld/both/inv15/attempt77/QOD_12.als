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
pred inv15[] {
(all c: (one Course) {
((working2gether[((Student)),((Student)),c]) => (all g1,g2: (one Grade) {
(((g1 in (((Student)).(c.grades))) && (g2 in (((Student)).(c.grades)))) => ((g1 = (g2.(ordering/prev[]))) || (g2 = (g1.(ordering/prev[]))) || (g1 = g2)))
}))
})
}
pred working2gether[s1,s2: Student,c: Course] {
(all p: (one (c.projects)) {
((s1 != s2) && (p in (((s1.projects) & (s2.projects)) & (c.projects))))
})
}





