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
(all u1: (one User) {
((((User)) in (u1.suggested)) => ((((User)) in ((u1.follows).follows)) && (((User)) !in (u1.follows))))
})
}





