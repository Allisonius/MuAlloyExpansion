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
(some c: (one Course),s: (one Student),g: (one Grade) {
((((s->g) in (c.grades)) && (g = ((c.grades).(integer/max[])))) => (some ((c.projects) & (s.projects))))
})
}





