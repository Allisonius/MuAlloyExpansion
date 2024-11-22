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
pred inv13[] {
(((Teacher.Tutors) in Student) && (no var123456 : Student { ((Tutors.var123456) in Teacher)}))
}





