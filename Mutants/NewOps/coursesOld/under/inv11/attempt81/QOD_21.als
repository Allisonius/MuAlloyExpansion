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
pred inv11[] {
(all person: (one Student) {
(all grade: (one Grade) {
(((person->grade) in (((Course)).grades)) => (((Course)) in (person.enrolled)))
})
})
}





