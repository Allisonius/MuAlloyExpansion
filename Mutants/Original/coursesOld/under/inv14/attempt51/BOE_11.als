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
pred inv14[] {
(all s: (one Student) {
(all p: (one Project) {
((all s2: (one Student) {
(lone p2: (one Project) {
((p2 in (s.enrolled)) && (p2 in (s2.enrolled)))
})
}) => ((s->p) in enrolled))
})
})
}





