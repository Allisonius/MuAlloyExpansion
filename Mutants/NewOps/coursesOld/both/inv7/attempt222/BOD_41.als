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
pred inv7[] {
(all s: (one Student),c: (one Course),p: (one Project) {
(lone p_act: (one Project) {
(((some (c & s)) && (some (p & (c.projects)))) => (p_act in (s.projects)))
})
})
}





