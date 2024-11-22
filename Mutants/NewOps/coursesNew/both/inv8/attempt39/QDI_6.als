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
pred inv8[] {
(all p1,p2: (Person - Professor) {
(all c1,c2: (one Course) {
((((p1->c1) in teaches) && ((p2->c2) in enrolled)) => ((p1 != p2) => (c1 != c2)))
})
})
}





