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
(all y: (one Course) {
((((Person)) in ((y.grades).(integer/max[]))) => (one p: (one Project) {
((p in (y.projects)) && (p in (((Person)).projects)))
}))
})
}





