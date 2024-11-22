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
(lone p: (one Project),g1,g2: (one ((projects.p).((projects.p).grades))) {
(g1 in ((g2 + (g2.(ordering/prev[]))) + (g2.(ordering/next[]))))
})
}





