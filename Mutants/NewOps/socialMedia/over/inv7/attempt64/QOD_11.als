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
((all s: (one (((User)).suggested)) {
(some f: (one (((User)).follows)) {
((s != ((User))) && (s in (f.follows)) && (s !in (((User)).follows)))
})
}) && (all u: (one User) {
((u.suggested) = (((u.follows).follows) - (u.follows)))
}))
}





