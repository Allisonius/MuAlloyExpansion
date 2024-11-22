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
(all p: (one Project),g,h: (one ((projects.p).((projects.p).grades))) {
((g = h) || (g !in (h.(ordering/prev[]))) || ((g.(ordering/prev[])) = h))
})
}





