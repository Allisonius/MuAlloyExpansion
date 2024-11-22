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
(one p: (one Professor) {
(c in (p.teaches))
})
}) && (all p: (one (Person - Student)) {
(all person: (one Student) {
((((p.enrolled) & (person.enrolled)) != none) => ((((p.teaches) & (person.enrolled)) = none) && (p != person)))
})
}))
}





