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
((all p: (one Photo),u1,u2: (one User) {
(((p in (u2.posts)) && (u2 in (u1.follows)) && (p != Ad)) => (p in (u1.sees)))
}) && (all ad: (one Ad),u1,u2: (one User) {
(((ad in (u1.sees)) => ((ad in (u2.sees)) && (u2 !in (u1.follows)))) || (u2 in (u1.follows)))
}))
}





