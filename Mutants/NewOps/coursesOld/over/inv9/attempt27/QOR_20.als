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
(some course1,course2: (one Course) {
(((course1 in (person1.teaches)) && (course2 in (person2.teaches))) => ((course2 !in (person1.enrolled)) && (course1 !in (person2.enrolled))))
})
})
}





