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
(all person1,person2: (one Person) {
(some course: (one Course) {
(((course in (person1.teaches)) && (course in (person2.enrolled))) => (person2 !in Professor))
})
})
}





