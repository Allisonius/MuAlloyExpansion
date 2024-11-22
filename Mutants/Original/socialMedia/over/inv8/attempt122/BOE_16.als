module unknown
open util/integer [] as integer
sig User {
follows: (set User),
sees: (set Photo),
posts: (set Photo),
suggested: (set User)
}
sig Influencer extends User {}
sig Photo {
date: (one Day)
}
sig Ad extends Photo {}
sig Day {}
pred inv8[] {
((all u1,u2: (one User),a: (one Ad) {
(((u1.sees) in a) => ((u1 != u2) && (a in (((u1.follows).posts) + ((u1.suggested).posts)))))
}) && (all u: (one User) {
(u !in (u.suggested))
}))
}





