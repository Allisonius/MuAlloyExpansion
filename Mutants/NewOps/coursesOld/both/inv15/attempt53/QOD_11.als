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
(all g1,g2: (one Grade) {
(all p: (one Project) {
(all c: (one Course) {
(((((Student)) != ((Student))) && (p in ((((Student)).projects) & (((Student)).projects))) && (((((Student))->g1) + (((Student))->g2)) in (c.grades))) => ((g1 = (g2.(ordering/prev[]))) || (g2 = (g1.(ordering/prev[]))) || (g1 = g2)))
})
})
})
}





