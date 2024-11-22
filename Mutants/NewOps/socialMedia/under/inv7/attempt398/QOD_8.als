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
(all y: (one (((User)).suggested)) {
((y !in ((((User)).follows) + ((User)))) && (some z: (one (((User)).follows)) {
(y in (z.follows))
}))
})
}





