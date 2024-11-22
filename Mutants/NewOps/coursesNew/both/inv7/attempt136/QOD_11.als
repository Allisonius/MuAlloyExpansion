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
(all c1: (one (((Student)).enrolled)) {
(all c2: (one ((((Student)).enrolled) - c1)) {
(all p1: (one ((c1.projects) & (((Student)).projects))) {
(all p2: (one ((c2.projects) & (((Student)).projects))) {
(no (p1 & p2))
})
})
})
})
}





