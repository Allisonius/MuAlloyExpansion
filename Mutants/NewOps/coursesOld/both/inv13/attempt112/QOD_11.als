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
(some p: (one Project) {
(((((Student)) in ((((Course)).grades).(ordering/last[]))) && (p in (((Course)).projects)) && (((Course)) in (((Student)).enrolled))) => (p in (((Student)).projects)))
})
}





