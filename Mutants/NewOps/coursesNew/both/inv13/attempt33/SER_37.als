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
(all s: (one Student) {
(all c: (one (s.enrolled)) {
((some ((ordering/max[(Grade.(c.grades))]) & (s.(c.grades)))) => ((some (c.projects)) && (some ((s.projects) & (c.projects)))))
})
})
}





