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
(some p: (one Project),g,h: (one ((projects.p).((projects.p).grades))) {
(g in ((h + (h.(ordering/prev[]))) + (h.(ordering/next[]))))
})
}





