User.destroy_all
Job.destroy_all

jp = User.create!(first_name: "James", last_name: "Perrin", email: "a@b.com", password: "123456")
jd = User.create!(first_name: "Jack", last_name: "Daniels", email: "j@d.com", password: "jackdaniels")
jb = User.create!(first_name: "Jim", last_name: "Beam", email: "j@b.com", password: "jimbeam")
am = User.create!(first_name: "Admin", last_name: "Admin", email: "admin@admin.com", password: "Admin1")
fb = User.create!(first_name: "foo", last_name: "Bar", email: "foo@bar.com", password: "111111")

fb.add_role :employer
am.add_role :admin

fb.jobs.create!(position: "Driller", place: "Roma", contract: "3 Months",
                description: "Experienced ADR super single driller at Fairview")
fb.jobs.create!(position: "AD", place: "Moomba", contract: "6 Months", description: "Experienced with triples")
fb.jobs.create!(position: "Derrickman", place: "Daily Waters", contract: "12 Months",
                description: "Knowledge of salt based systems")
fb.jobs.create!(position: "Roughneck", place: "Injune", contract: "3 Months", description: "Can use tongs")
fb.jobs.create!(position: "Leasehand", place: "Oakey", contract: "1 Months", description: "No experience needed")

jp.information.create!(available: 'No', employer: "Coder Academy", location: "Brisbane",
                       summary: "Studying to be a coder", started: "Feburary 2021", finished: "July 2021")
jd.information.create!(available: 'Yes', employer: "Ensign", location: "Toowoomba",
                       summary: "Drilled on 958 for the past 6 months", started: "December 2020", finished: "May 2021")
jb.information.create!(available: 'Yes', employer: "Saxon", location: "Newcastle",
                       summary: "Previous exp 5 yrs ago looking for AD position", started: "May 2010", finished: "June 2016")
jp.information.create!(available: 'Yes', employer: "Boart Longyear", location: "Darwin",
                       summary: "Changing over from mineral rigs", started: "Nov 2019", finished: "Feb 2021")
