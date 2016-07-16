# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



#tracks

TRACKS = ["IOT", "FINTECH", "TRAVEL"]
TRACKS.each{|tag| Track.create(name: "#{tag}")}

#startups

Startup.create(name: "Startup #1", description: "A startup.", track_id: 1)
Startup.create(name: "Startup #2", description: "A startup.", track_id: 2)
Startup.create(name: "Startup #3", description: "A startup.", track_id: 3)
Startup.create(name: "Startup #4", description: "A startup.", track_id: 1)
Startup.create(name: "Startup #5", description: "A startup.", track_id: 2)
Startup.create(name: "Startup #6", description: "A startup.", track_id: 3)
Startup.create(name: "Startup #7", description: "A startup.", track_id: 1)
Startup.create(name: "Startup #8", description: "A startup.", track_id: 2)
Startup.create(name: "Startup #9", description: "A startup.", track_id: 3)
Startup.create(name: "Startup #10", description: "A startup.", track_id: 1)
Startup.create(name: "Startup #11", description: "A startup.", track_id: 2)
Startup.create(name: "Startup #12", description: "A startup.", track_id: 3)

#founders
24.times do |i|
Participant.create(name: "Participant ##{i+1}", about: "A founder.")
end

#qualification positions and group
Qualificationposition.create(name: "1")
Qualificationposition.create(name: "2")
Qualificationposition.create(name: "3")
Qualificationposition.create(name: "4")
Qualificationposition.create(name: "5")
Qualificationposition.create(name: "6")
Qualificationposition.create(name: "7")
Qualificationposition.create(name: "8")
Qualificationposition.create(name: "9")
Qualificationposition.create(name: "10")
Qualificationposition.create(name: "11")
Qualificationposition.create(name: "12")

Qualificationgroup.create(startup_id: 1, qualificationposition_id: 1)
Qualificationgroup.create(startup_id: 2, qualificationposition_id: 2)
Qualificationgroup.create(startup_id: 3, qualificationposition_id: 3)
Qualificationgroup.create(startup_id: 4, qualificationposition_id: 4)
Qualificationgroup.create(startup_id: 5, qualificationposition_id: 5)
Qualificationgroup.create(startup_id: 6, qualificationposition_id: 6)
Qualificationgroup.create(startup_id: 7, qualificationposition_id: 7)
Qualificationgroup.create(startup_id: 8, qualificationposition_id: 8)
Qualificationgroup.create(startup_id: 9, qualificationposition_id: 9)
Qualificationgroup.create(startup_id: 10, qualificationposition_id: 10)
Qualificationgroup.create(startup_id: 11, qualificationposition_id: 11)
Qualificationgroup.create(startup_id: 12, qualificationposition_id: 12)


#semifinal positions and group
Semifinalposition.create(name: "1")
Semifinalposition.create(name: "2")
Semifinalposition.create(name: "3")
Semifinalposition.create(name: "4")
Semifinalposition.create(name: "5")
Semifinalposition.create(name: "6")
Semifinalposition.create(name: "7")
Semifinalposition.create(name: "8")

Semifinalgroup.create(startup_id: 1, semifinalposition_id: 1)
Semifinalgroup.create(startup_id: 3, semifinalposition_id: 2)
Semifinalgroup.create(startup_id: 5, semifinalposition_id: 3)
Semifinalgroup.create(startup_id: 7, semifinalposition_id: 4)
Semifinalgroup.create(startup_id: 9, semifinalposition_id: 5)
Semifinalgroup.create(startup_id: 12, semifinalposition_id: 6)
Semifinalgroup.create(startup_id: 2, semifinalposition_id: 7)
Semifinalgroup.create(startup_id: 6, semifinalposition_id: 8)

#final positions and group
Finalposition.create(name: "1")
Finalposition.create(name: "2")
Finalposition.create(name: "3")
Finalposition.create(name: "4")

Finalgroup.create(startup_id: 3, finalposition_id: 1, iswinner: true)
Finalgroup.create(startup_id: 7, finalposition_id: 2, iswinner: false)
Finalgroup.create(startup_id: 12, finalposition_id: 3, iswinner: false)
Finalgroup.create(startup_id: 4, finalposition_id: 4, iswinner: false)  

#participants(founders) per startup
Startupparticipant.create(startup_id: 1, participant_id: 1, role: "CEO")
Startupparticipant.create(startup_id: 1, participant_id: 2, role: "CTO")

Startupparticipant.create(startup_id: 2, participant_id: 3, role: "CEO")
Startupparticipant.create(startup_id: 2, participant_id: 4, role: "CTO")

Startupparticipant.create(startup_id: 3, participant_id: 5, role: "CEO")
Startupparticipant.create(startup_id: 3, participant_id: 6, role: "CTO")

Startupparticipant.create(startup_id: 4, participant_id: 7, role: "CEO")
Startupparticipant.create(startup_id: 4, participant_id: 8, role: "CTO")

Startupparticipant.create(startup_id: 5, participant_id: 9, role: "CEO")
Startupparticipant.create(startup_id: 5, participant_id: 10, role: "CTO")

Startupparticipant.create(startup_id: 6, participant_id: 11, role: "CEO")
Startupparticipant.create(startup_id: 6, participant_id: 12, role: "CTO")

Startupparticipant.create(startup_id: 7, participant_id: 13, role: "CEO")
Startupparticipant.create(startup_id: 7, participant_id: 14, role: "CTO")

Startupparticipant.create(startup_id: 8, participant_id: 15, role: "CEO")
Startupparticipant.create(startup_id: 8, participant_id: 16, role: "CTO")

Startupparticipant.create(startup_id: 9, participant_id: 17, role: "CEO")
Startupparticipant.create(startup_id: 9, participant_id: 18, role: "CTO")

Startupparticipant.create(startup_id: 10, participant_id: 19, role: "CEO")
Startupparticipant.create(startup_id: 10, participant_id: 20, role: "CTO")

Startupparticipant.create(startup_id: 11, participant_id: 21, role: "CEO")
Startupparticipant.create(startup_id: 11, participant_id: 22, role: "CTO")

Startupparticipant.create(startup_id: 12, participant_id: 23, role: "CEO")
Startupparticipant.create(startup_id: 12, participant_id: 24, role: "CTO")

