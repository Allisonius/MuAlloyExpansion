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
pred inv10[] {
((no p: (one Person) {
(p in (Professor & Student))
}) && (all p: (one Person) {
(all c: (one (p.enrolled)) {
((p.(c.grades)) in Grade)
})
}) && (all s: (one Student) {
(one c: (one (s.enrolled)) {
((s.(c.grades)) in Grade)
})
}) && (all p: (one Professor) {
(all c: (one (p.teaches)) {
(no (p.(c.grades)))
})
}) && (all o: (one ((Person - Student) - Professor)) {
(all c: (one (o.enrolled)) {
(no (o.(c.grades)))
})
}))
}





