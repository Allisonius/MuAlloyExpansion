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
(all u1,u3: (one User) {
((((u3.follows) in (u1.sees)) => (u3 in (u1.suggested))) || (u3 in (u1.follows)))
})
}





