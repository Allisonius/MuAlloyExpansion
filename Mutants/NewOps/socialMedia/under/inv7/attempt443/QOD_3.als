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
(all u: (one User) {
(((User - (u.follows)) in (u.suggested)) => (some u3: (one (u.follows)) {
((User - (u.follows)) in (u3.follows))
}))
})
}





