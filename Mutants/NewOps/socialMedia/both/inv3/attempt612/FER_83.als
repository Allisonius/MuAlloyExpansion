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
pred inv3[] {
((all u1: (one User),u2: (one User),p: (one Photo) {
(((p in (u1.sees)) && (p !in Ad)) => (u2 in (u1.follows)))
}) && (all a: (one Ad),u: (one User) {
(a in (u.follows))
}))
}





