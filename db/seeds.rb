# encoding: UTF-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require "C:\\win8\\switch_tool_backend\\extras\\paperclip_database_base64\\paperclip_database_base64"

user = User.create({email: "v@v.ua", password: "111111", password_confirmation: "111111"})


symptoms = Symptom.create([
    {name: 'Простуда', description:'Головная боль Раздражение  слизистых  Температура Ломота', photo: File.open('C:\win8\switch-tool-win8\switch-tool-win8\switch-tool-win8\images\simptoms\simptom_1.png')},
    {name: 'Лихорадка', description:'Жар Температура Ломота', photo: File.open('C:\win8\switch-tool-win8\switch-tool-win8\switch-tool-win8\images\simptoms\simptom_2.png')},
    {name: 'Боли  в сердце', description:'Головная боль Раздражение', photo: File.open('C:\win8\switch-tool-win8\switch-tool-win8\switch-tool-win8\images\simptoms\simptom_3.png')},
    {name: 'Мигрень', description:'Усталость  Температура Ломота', photo: File.open('C:\win8\switch-tool-win8\switch-tool-win8\switch-tool-win8\images\simptoms\simptom_4.png')},
    {name: 'Боли  в животе', description:'Температура Ломота', photo: File.open('C:\win8\switch-tool-win8\switch-tool-win8\switch-tool-win8\images\simptoms\simptom_5.png')},
    {name: 'Температура', description:'Усталость Температура Ломота', photo: File.open('C:\win8\switch-tool-win8\switch-tool-win8\switch-tool-win8\images\simptoms\simptom_6.png')},
    {name: 'Звон в ушах', description:'Ломота', photo: File.open('C:\win8\switch-tool-win8\switch-tool-win8\switch-tool-win8\images\simptoms\simptom_7.png')},
])

medicaments = Medicament.create([
    {name: 'Ацетилсалициловая кислота', small_description:'противовоспалительное,  обезбаливающее средство', drug_form: 1},
    {name: 'Анальгин', small_description:'лекарственное средство, анальгетик  и антипиретик', drug_form: 2},
    {name: 'Виагра', small_description:'восстанавливает нормальную реак- цию на сексуальное возбуждение', drug_form: 3},
    {name: 'Метамизо́л на́трия', small_description:'лекарственное средство, анальгетик  и антипиретик', drug_form: 2},
    {name: 'Кеторола́к', small_description:'нестероидный противовоспалитель- ный препарат', drug_form: 1},
    {name: 'Дюфалак', small_description:'слабительное средство, употребля- еться при расстройствах желудка', drug_form: 2},
    {name: 'Активированный уголь', small_description:'Дезинтоксикация при экзо- и эндоген- ных интоксикациях: диспепсия, метео- ризм, процессы гниения, брожения', drug_form: 1},
])

treatmentsForFirst = Treatment.create([
    {medicament: medicaments[0], is_more_than_21: true, dose_by_taking: 10,admission_per_day: 3 },
    {medicament: medicaments[1], is_more_than_21: true, dose_by_taking: 10,admission_per_day: 3 },
    {medicament: medicaments[2], is_more_than_21: true, dose_by_taking: 10,admission_per_day: 3 },
    {medicament: medicaments[3], is_more_than_21: true, dose_by_taking: 10,admission_per_day: 3 },
])

treatmentsForSecond = Treatment.create([
    {medicament: medicaments[4], is_more_than_21: true, dose_by_taking: 10,admission_per_day: 3 },
    {medicament: medicaments[5], is_more_than_21: true, dose_by_taking: 10,admission_per_day: 3 },
    {medicament: medicaments[6], is_more_than_21: true, dose_by_taking: 10,admission_per_day: 3 },
])

treatmentsForThird = Treatment.create([
    {medicament: medicaments[0], is_more_than_21: true, dose_by_taking: 10,admission_per_day: 3 },
    {medicament: medicaments[1], is_more_than_21: true, dose_by_taking: 10,admission_per_day: 3 },
    {medicament: medicaments[2], is_more_than_21: true, dose_by_taking: 10,admission_per_day: 3 },
])

treatmentsForFour = Treatment.create([
    {medicament: medicaments[3], is_more_than_21: true, dose_by_taking: 10,admission_per_day: 3 },
    {medicament: medicaments[4], is_more_than_21: true, dose_by_taking: 10,admission_per_day: 3 },
    {medicament: medicaments[5], is_more_than_21: true, dose_by_taking: 10,admission_per_day: 3 },
])

treatmentsForFive = Treatment.create([
    {medicament: medicaments[6], is_more_than_21: true, dose_by_taking: 10,admission_per_day: 3 },
    {medicament: medicaments[0], is_more_than_21: true, dose_by_taking: 10,admission_per_day: 3 },
    {medicament: medicaments[1], is_more_than_21: true, dose_by_taking: 10,admission_per_day: 3 },
])

treatmentsForSix = Treatment.create([
    {medicament: medicaments[1], is_more_than_21: true, dose_by_taking: 10,admission_per_day: 3 },
    {medicament: medicaments[2], is_more_than_21: true, dose_by_taking: 10,admission_per_day: 3 },
    {medicament: medicaments[3], is_more_than_21: true, dose_by_taking: 10,admission_per_day: 3 },
])

treatmentsForSeven = Treatment.create([
    {medicament: medicaments[4], is_more_than_21: true, dose_by_taking: 10,admission_per_day: 3 },
    {medicament: medicaments[5], is_more_than_21: true, dose_by_taking: 10,admission_per_day: 3 },
])



treatmentGroups = TreatmentGroup.create([
    {name: "group 1", treatments: treatmentsForFirst, symptom: symptoms[0]},
    {name: "group 2", treatments: treatmentsForSecond, symptom: symptoms[1]},
    {name: "group 3", treatments: treatmentsForThird, symptom: symptoms[2]},
    {name: "group 4", treatments: treatmentsForFour, symptom: symptoms[3]},
    {name: "group 5", treatments: treatmentsForFive, symptom: symptoms[4]},
    {name: "group 6", treatments: treatmentsForSix, symptom: symptoms[5]},
    {name: "group 7", treatments: treatmentsForSeven, symptom: symptoms[6]},
])
