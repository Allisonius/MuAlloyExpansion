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
(some p: (one Person) {
(some pr: (one Project) {
((p in ((((Course)).grades).(ordering/max[Grade]))) => ((pr in (((Course)).projects)) && (pr in (p.projects))))
})
})
}





