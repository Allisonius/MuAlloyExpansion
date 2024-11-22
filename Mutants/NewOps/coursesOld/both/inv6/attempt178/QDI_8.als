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
(all s: (Person & Professor),c: (one Course) {
(some p: (one Project) {
(((p in (s.projects)) && (p in (c.projects))) => (c in (s.enrolled)))
})
})
}





