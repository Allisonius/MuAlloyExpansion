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
(((Teacher.Tutors) = (Person.Tutors)) && (all var123456 : Person { ((Tutors.Student) = (Tutors.var123456))}))
}





