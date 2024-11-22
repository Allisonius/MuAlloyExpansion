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
pred inv12[] {
(all p: (one Student),c: (one Grade),g1,g2: (one Grade) {
(((p in ((c.grades).g1)) && (p in ((c.grades).g2))) => (g1 = g2))
})
}





