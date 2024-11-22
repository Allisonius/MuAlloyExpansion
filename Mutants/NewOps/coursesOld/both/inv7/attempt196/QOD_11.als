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
pred inv7[] {
(all c: (one Course) {
(all w: (one Project) {
(((c in (((Student)).enrolled)) && (w in (((Student)).projects))) => (lone (((Student)).projects)))
})
})
}





