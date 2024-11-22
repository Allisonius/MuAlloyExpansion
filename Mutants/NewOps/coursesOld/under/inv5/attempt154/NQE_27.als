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
pred inv5[] {
(all c: (one Course) {
(some u: (one Person) {
(all p: (one Project) {
(((p in (c.projects)) && (c in (u.enrolled))) => ((p in (u.projects)) && (u in Student)))
})
})
})
}





