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
((no ((((User)).suggested) & (((User)).follows))) && (((User)) !in (((User)).suggested)) && ((((User)).suggested) in ((((User)).follows).follows)))
}





