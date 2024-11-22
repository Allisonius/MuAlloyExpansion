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
pred inv11[] {
(all s1: (Person - Professor) {
(all c1: (one Course) {
(all g1: (one Grade) {
(((c1->(s1->g1)) in grades) => ((s1->c1) in enrolled))
})
})
})
}





