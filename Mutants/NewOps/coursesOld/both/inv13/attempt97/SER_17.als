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
(all c: (one Course),s: (one Course) {
(((c in (s.enrolled)) && ((s.(c.grades)) = (ordering/max[(Student.(c.grades))]))) => (some ((c.projects) & (s.projects))))
})
}





