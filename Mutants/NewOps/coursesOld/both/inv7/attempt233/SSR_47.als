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
(some p1,p2: (one Project) {
(all c1,c2: (one Course) {
(all s: (one Student) {
(((some ((p1 + p2) & (s.projects))) && (p1 in (c1.projects)) && (p2 in (c2.projects))) => (c1 != c2))
})
})
})
}





