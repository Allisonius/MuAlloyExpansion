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
(all user: (one User) {
(all suggested: (one (user.suggested)) {
((suggested !in (user.follows)) && (lone following: (one (user.follows)) {
(suggested in (following.follows))
}))
})
})
}





