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
(all p: (one (Person - Student)) {
(some person: (one Person) {
((((p.enrolled) & (person.enrolled)) != none) => ((((p.teaches) & (person.enrolled)) = none) && (p != person)))
})
})
}





