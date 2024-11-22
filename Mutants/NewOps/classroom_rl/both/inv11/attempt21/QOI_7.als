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
pred inv11[] {
(((Tutors.Person) in Teacher) && (no var123456 : Person { ((var123456.Tutors) in Student)}))
}





