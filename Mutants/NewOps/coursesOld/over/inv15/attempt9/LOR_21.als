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
(all p: (one Project),g,g1: (one ((Person :> (projects.p)).((Course :> (projects.p)).grades))) {
((g = g1) && (g1 = (g.(ordering/prev[]))) && (g = (g1.(ordering/prev[]))))
})
}





