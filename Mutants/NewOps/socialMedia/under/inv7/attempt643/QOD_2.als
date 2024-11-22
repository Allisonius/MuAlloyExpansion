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
(all s: (one User) {
((s in ((User - s).suggested)) <=> (some u1: (one (User - s)) {
((u1 != (User - s)) && (s in (u1.follows)) && (u1 in ((User - s).follows)) && (s !in ((User - s).follows)))
}))
})
}





