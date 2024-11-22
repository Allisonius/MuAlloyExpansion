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
pred inv7[] {
((all x,y: (one User) {
(((x->y) in suggested) => (some z: (one User) {
(((z->y) in follows) && ((x->y) !in follows))
}))
}) && (all u1,u2: (one User) {
((u1 in (u2.sees)) => (u1 != u2))
}))
}





