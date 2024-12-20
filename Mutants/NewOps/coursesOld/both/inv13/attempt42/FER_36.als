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
(all c: (one Course) {
(one s: (one ((c.grades).(ordering/last[]))) {
(some p: (one (c.projects)) {
(p in (s.enrolled))
})
})
})
}





