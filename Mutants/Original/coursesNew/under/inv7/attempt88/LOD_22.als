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
(all c1,c2: (one Course) {
(all y: (one Student) {
(all p1,p2: (one Project) {
(((p1 in (y.projects)) && (p2 in (y.projects)) && (p1 in (c1.projects)) && (p1 != p2)) => (c1 != c2))
})
})
})
}





