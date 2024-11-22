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
pred inv12[] {
(all s: (one Student) {
(all c1,c2: (one Course) {
(((c1 in (s.enrolled)) && (c2 in (s.enrolled)) && ((s->((Grade))) in (c1.grades)) && ((s->((Grade))) in (c2.grades)) && (((Grade)) != ((Grade)))) => (c1 != c2))
})
})
}





