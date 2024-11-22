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
(all s: (one Student),c: (one Course),g: (one Grade),proj: (one Project) {
(((s in ((c.grades).(ordering/last[]))) && (proj = (c.projects))) => (proj in (s.projects)))
})
}





