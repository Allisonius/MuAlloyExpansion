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
(((((Student))->((Person))) !in Tutors) && ((((Person))->((Teacher))) !in Tutors) && ((((Teacher))->((Student))) in Tutors))
}





