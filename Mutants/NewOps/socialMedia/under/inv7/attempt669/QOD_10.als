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
((s in ((((User)).follows).follows)) && (s != ((User))))
}) && (all u,s: (one User) {
(((s !in (u.follows)) && (s in (u.suggested))) => (s in ((u.follows).follows)))
}))
}





