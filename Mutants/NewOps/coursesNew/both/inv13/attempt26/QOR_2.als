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
(no c: (one Course) {
(some p: (one Person) {
(some pr: (one Project) {
((p in ((c.grades).(ordering/max[Grade]))) => (((p.projects) & (c.projects)) != none))
})
})
})
}





