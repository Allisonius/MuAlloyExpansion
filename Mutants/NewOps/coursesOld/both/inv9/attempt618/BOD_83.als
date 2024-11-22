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
((all c: (one Course) {
(all p1,p2: (one Professor) {
((c in ((p1 + p2).teaches)) => (p1 = p2))
})
}) && (all p: (one (Person - Student)) {
(all person: (one Person) {
(((p.enrolled) & (person.enrolled)) != none)
})
}))
}





