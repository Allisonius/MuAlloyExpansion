module unknown
open util/integer [] as integer
sig Person {
Tutors: (set Person),
Teaches: (set Class)
}
sig Group {}
sig Class {
Groups: (Person->Group)
}
sig Teacher in Person {}
sig Student in Person {}
pred inv15[] {
((((((Teacher))->((Teacher))) in Tutors) && (((Teacher)) in Student) && (((Teacher)) != ((Teacher)))) => (some p3: (one Person) {
((p3->((Teacher))) in Tutors)
}))
}





