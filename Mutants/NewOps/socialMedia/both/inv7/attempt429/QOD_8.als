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
(some f: (one (User - ((User)))) {
((f in (((User)).suggested)) => ((f in ((((User)).follows).follows)) && (f !in (((User)).follows))))
})
}





