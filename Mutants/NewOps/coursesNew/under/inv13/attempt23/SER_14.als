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
pred inv13[] {
(all s: (one Course) {
(all c: (one Course) {
((s in ((c.grades).(ordering/last[]))) => (some p: (one Project) {
((p in (c.projects)) && (p in (s.projects)))
}))
})
})
}





