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
(some f: (one (((((User)).follows).follows) - ((User)))) {
(((((User)) !in (((User)).follows)) && (((User)) in f)) => (((User)) = (((User)).suggested)))
})
}





