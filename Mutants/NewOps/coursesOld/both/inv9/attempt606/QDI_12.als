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
pred inv9[] {
((all p,a: (Person & Student) {
(all c1,c2: (one Course) {
((((p->c1) in teaches) && ((a->c1) in enrolled) && ((a->c2) in teaches)) => ((p->c2) !in enrolled))
})
}) && (all p,a: (one Professor) {
(no ((p.teaches) & (a.enrolled)))
}))
}





