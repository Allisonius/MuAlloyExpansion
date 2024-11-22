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
(all s: (one Student) {
(lone c1: (one (s.enrolled)) {
(all c2: (one ((s.enrolled) - c1)) {
(all p1: (one ((c1.projects) & (s.projects))) {
(all p2: (one ((c2.projects) & (s.projects))) {
(no (p1 & p2))
})
})
})
})
})
}





