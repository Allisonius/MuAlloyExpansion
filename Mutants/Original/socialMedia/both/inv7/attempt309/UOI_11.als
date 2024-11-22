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
(all u1: (one User),u2: (one (u1.follows)),u3: (one (u2.(~follows))) {
((u3 !in (u1.follows)) <=> (u3 in (u1.suggested)))
})
}





