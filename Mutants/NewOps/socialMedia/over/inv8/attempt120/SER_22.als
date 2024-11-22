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
((all u1,u2: (one User),a: (one Day) {
((a in (u1.sees)) => ((a in (u2.posts)) && (u2 in ((u1.follows) + (u1.suggested)))))
}) && (all u: (one User) {
(u !in (u.suggested))
}))
}





