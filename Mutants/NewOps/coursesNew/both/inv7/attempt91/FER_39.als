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
(all u: (one Student) {
(all p: (one (u.projects)) {
(some c: (one Course) {
((c in (u.teaches)) && (p in (c.projects)))
})
})
})
}





