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
(all s: (one Student),c: (one Course),p: (one Project) {
(((s in ((c.grades).(ordering/last[]))) && (p in (c.projects)) && (c in (s.enrolled))) => (p = (s.projects)))
})
}





