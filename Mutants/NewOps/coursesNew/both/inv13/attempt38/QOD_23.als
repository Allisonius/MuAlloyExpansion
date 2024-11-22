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
((all s: (one Student) {
((some ((ordering/max[(Student.((s.enrolled).grades))]) & (s.((s.enrolled).grades)))) => (some ((s.projects) & ((s.enrolled).projects))))
}) && (all c: (one Course) {
((some (c.grades)) => (some (c.projects)))
}))
}





