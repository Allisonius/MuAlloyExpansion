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
(((((User)) !in ((((User)).follows) + (((User)).suggested))) && (no ((((User)).suggested) & (((User)).follows)))) && (all x: (one User) {
(all u: (one ((((x.follows).follows) - (x.follows)) - x)) {
(u in (x.suggested))
})
}))
}





