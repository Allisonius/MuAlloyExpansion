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
(all u,v: (one User) {
(((u.suggested) in v) => ((v in ((u.follows).follows)) && (v !in (u.follows)) && (v != u)))
})
}





