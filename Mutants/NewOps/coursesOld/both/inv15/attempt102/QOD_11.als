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
(all p1: (one Project) {
(all c1: (one Course) {
((((((Student))->p1) in projects) && ((((Student))->p1) in projects) && (((Student)) != ((Student))) && ((c1->p1) in projects)) => (all g1,g2: (one Grade) {
((((c1->(((Student))->g1)) in grades) && ((c1->(((Student))->g2)) in grades)) => ((g1 = (g2.(ordering/prev[]))) || (g2 = (g1.(ordering/prev[]))) || (g1 = g2)))
}))
})
})
}





