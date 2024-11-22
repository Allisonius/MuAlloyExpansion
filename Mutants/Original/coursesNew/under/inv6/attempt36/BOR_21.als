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
pred inv6[] {
(all a: (one Student) {
(all p: (one (a.projects)) {
(some c: (one Course) {
((c in (a.enrolled)) && (p = (a.projects)))
})
})
})
}





