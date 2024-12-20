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
(all x,y: (one Photo) {
((y in (x.suggested)) => (some p: (one User) {
((p in ((x.follows).follows)) && (p !in (x.follows)))
}))
})
}





