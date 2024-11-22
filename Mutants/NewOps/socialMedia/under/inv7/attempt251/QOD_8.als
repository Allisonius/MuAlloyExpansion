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
(all s: (one (((User)).suggested)) {
((s != ((User))) && (s in ((((User)).follows).follows)) && (s !in (((User)).follows)))
})
}





