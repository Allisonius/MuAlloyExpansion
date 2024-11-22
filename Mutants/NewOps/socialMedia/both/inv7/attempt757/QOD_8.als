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
(some suggested_user: (one (((User)).suggested)) {
((suggested_user != ((User))) && (suggested_user !in (((User)).follows)) && (some following: (one (((User)).follows)) {
(suggested_user in (following.follows))
}))
})
}





