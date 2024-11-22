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
(all disj s1,s2: (one Student),c: (one Course) {
(all g1: (one (s1.(c.grades))),g2: (one (s2.(c.grades))) {
((g1 = (g2.(ordering/prev[]))) || (g1 = (g2.(ordering/next[]))) || (g1 = g2))
})
})
}





