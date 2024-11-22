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
(all x: (one Student) {
(all p: (one Project) {
((p in (x.projects)) => (some c: (one Course) {
((c in x) && (p in (c.projects)))
}))
})
})
}





