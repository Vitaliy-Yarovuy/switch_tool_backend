# encoding: UTF-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require Rails.root.join("extras\\paperclip_database_base64\\paperclip_database_base64")

user = User.create({email: "v@v.ua", password: "111111", password_confirmation: "111111"})
img_path = "C:\\win8\\switch-tool-win8\\switch-tool-win8\\switch-tool-win8\\images\\simptoms\\"

texts =[
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec fermentum odio vel massa volutpat mollis. Phasellus dapibus auctor elit, porta egestas nisl rhoncus eleifend. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec tristique venenatis rhoncus. Pellentesque eu ligula magna, eu rhoncus enim. Proin quis nibh nulla, non mollis augue. Fusce sodales feugiat magna, et varius lacus adipiscing sagittis. Aenean aliquam velit eget justo consectetur ut iaculis diam vulputate. Nunc id odio at nunc consectetur semper vitae vestibulum odio. Phasellus sit amet lacus at metus rhoncus cursus. Vivamus posuere lacus eget sem porta vitae consectetur tellus suscipit. Vestibulum nec felis sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sodales condimentum enim quis auctor. Praesent magna urna, pellentesque vitae sodales non, scelerisque ut nibh.",
    "eifend. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec tristique venenatis rhoncus. Pellentesque eu ligula magna, eu rhoncus enim. Proin quis nibh nulla, non mollis augue. Fusce sodales feugiat magna, et varius lacus adipiscing sagittis. Aenean aliquam velit eget justo consectetur ut iaculis diam vulputate. Nunc id odio at nunc consectetur semper vitae vestibulum odio. Phasellus sit amet lacus at metus rhoncus cursus. Vivamus posuere lacus eget sem porta vitae consectetur tellus suscipit. Vestibulum nec felis sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sodales condimentum enim quis auctor. Praesent magna urna, pellentesque vitae sodales non, scelerisque ut nibh.",
    "Mauris at nisl sit amet lorem gravida lobortis. Praesent eget libero nec odio suscipit eleifend quis non ipsum. Proin cursus sagittis neque et interdum. Pellentesque vel turpis et risus bibendum aliquam. In hac habitasse platea dictumst. Aliquam sit amet mattis ante. Cras diam arcu, ultrices a faucibus a, adipiscing ut arcu. Sed ultricies fermentum aliquet. Cras tortor felis, vehicula sed porttitor non, blandit sit amet libero. Nunc id venenatis quam. Aenean aliquet justo non risus rhoncus tempor eget at felis. Pellentesque vitae lacus ipsum.",
    "Nam vehicula tellus id neque pretium iaculis. Donec sit amet nibh velit, ac tincidunt ligula. Donec convallis, nulla pretium imperdiet pellentesque, massa lectus consectetur justo, nec cursus mauris ligula vitae orci. Aliquam in dolor velit. Aenean nibh nisl, dapibus a lobortis eget, accumsan ac eros. Suspendisse ut lacinia urna. Suspendisse eget tortor sit amet dolor rutrum tincidunt et in magna. Ut non sem vitae mauris auctor gravida ac quis sapien. Suspendisse porta quam auctor nisi tristique a aliquam massa malesuada. Phasellus placerat volutpat tellus in pharetra. Aenean sed ullamcorper tellus. Sed egestas congue neque vel mollis.",
    "Curabitur laoreet magna sed odio accumsan pellentesque. Vivamus vel nibh ligula, eget imperdiet est. In nulla est, ullamcorper ac tincidunt eget, mollis vitae odio. Pellentesque rhoncus gravida eros, sit amet pretium metus malesuada sed. Nulla a euismod magna. Curabitur rhoncus laoreet dignissim. Praesent eleifend, turpis vel lacinia sodales, felis orci adipiscing eros, in bibendum ante nisi id elit. Aliquam erat volutpat. Vivamus a purus id justo molestie volutpat nec et est. Mauris consequat dapibus quam, in mollis eros rhoncus ut. Suspendisse id nibh justo, ac vestibulum leo. Suspendisse sodales tincidunt iaculis. Fusce quis blandit mi. Sed posuere lectus eu nulla gravida eget condimentum ligula eleifend. Praesent ac ligula turpis. Pellentesque non tellus nunc, at malesuada massa.",
    "Aliquam vel bibendum erat. Donec sit amet vulputate odio. Integer ac eros eu libero dictum mattis vel porttitor ipsum. Mauris non imperdiet sapien. Nulla laoreet, enim quis posuere fringilla, nunc nibh malesuada urna, et interdum nisl enim ut nulla. Nulla mi libero, placerat in scelerisque non, viverra nec lectus. Morbi sapien mi, ullamcorper cursus congue nec, consectetur a enim. Quisque sem ipsum, suscipit id fringilla pulvinar, venenatis et lorem. Vestibulum vel purus et lacus porttitor ultrices. Phasellus viverra, risus vel adipiscing pellentesque, odio libero iaculis nunc, a ultricies ipsum tortor id sapien.",
    "Mauris eleifend ipsum ac dui viverra auctor. Pellentesque a lorem magna, sit amet semper eros. Quisque a dictum ligula. Suspendisse urna eros, rhoncus et laoreet at, ornare sed arcu. Nam vitae mauris vel odio eleifend varius porttitor in erat. Nulla consectetur massa quis nisi ornare et eleifend purus pharetra. Curabitur id diam elit. Ut scelerisque nisi non elit placerat ut congue magna elementum. Nam lacinia, mi iaculis tincidunt dapibus, massa mi commodo nulla, feugiat adipiscing nulla mi vulputate est. Proin volutpat pulvinar lacus nec mollis.",
    "Ut sit amet erat quis ligula elementum imperdiet at non libero. Nullam non volutpat turpis. Vivamus eget aliquet velit. Donec dignissim, erat non ornare dictum, sapien felis fermentum nibh, nec tempor ipsum velit vel libero. Maecenas tellus quam, commodo commodo mattis eget, fringilla a urna. Sed vel hendrerit mi. Ut cursus, lectus a lobortis condimentum, lacus erat ullamcorper diam, vel gravida velit justo ut velit. Curabitur quis nunc orci, sit amet mollis enim. Maecenas vitae velit erat. Cras quis mi ante, ac aliquam justo. Pellentesque volutpat consequat ornare. Curabitur eget erat vel mauris congue luctus.",
    "Aenean in mi nec risus molestie auctor vitae et tortor. Vivamus sed dolor eros. Vivamus id orci eget ligula sodales elementum id a velit. Phasellus suscipit lectus non metus congue non tempor neque pretium. Integer a orci nisl. Ut lobortis imperdiet convallis. Aliquam erat volutpat. Fusce vel odio non quam tincidunt pharetra. Phasellus aliquam leo et sem ornare iaculis. Sed placerat leo sit amet magna congue gravida. Vivamus bibendum semper neque id porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;"
]


class CircleEnumerator
  include Enumerable
  def initialize(arr)
    @arr = arr
  end
  def each
    n = 0
    while true
      yield @arr[n% @arr.length]
      n += 1
    end
  end
end


text_gen = CircleEnumerator.new(texts).to_enum
dose_gen = CircleEnumerator.new([1,2,3,4]).to_enum
admission_gen = CircleEnumerator.new([1,2,3]).to_enum


symptoms = Symptom.create([
    {name: 'Простуда', description:'Головная боль Раздражение  слизистых  Температура Ломота', photo: File.open(img_path+'simptom_1.png')},
    {name: 'Лихорадка', description:'Жар Температура Ломота', photo: File.open(img_path+'simptom_2.png')},
    {name: 'Боли  в сердце', description:'Головная боль Раздражение', photo: File.open(img_path+'simptom_3.png')},
    {name: 'Мигрень', description:'Усталость  Температура Ломота', photo: File.open(img_path+'simptom_4.png')},
    {name: 'Боли  в животе', description:'Температура Ломота', photo: File.open(img_path+'simptom_5.png')},
    {name: 'Температура', description:'Усталость Температура Ломота', photo: File.open(img_path+'simptom_6.png')},
    {name: 'Звон в ушах', description:'Ломота', photo: File.open(img_path+'simptom_7.png')},
])

medicaments = Medicament.create([
    {name: 'Ацетилсалициловая кислота', small_description:'противовоспалительное,  обезбаливающее средство', drug_form: 1, big_description: text_gen.next , dosage_form: text_gen.next, medical_evidence: text_gen.next, trade_names: text_gen.next},
    {name: 'Анальгин', small_description:'лекарственное средство, анальгетик  и антипиретик', drug_form: 2, big_description: text_gen.next , dosage_form: text_gen.next, medical_evidence: text_gen.next, trade_names: text_gen.next},
    {name: 'Виагра', small_description:'восстанавливает нормальную реак- цию на сексуальное возбуждение', drug_form: 3, big_description: text_gen.next , dosage_form: text_gen.next, medical_evidence: text_gen.next, trade_names: text_gen.next},
    {name: 'Метамизо́л на́трия', small_description:'лекарственное средство, анальгетик  и антипиретик', drug_form: 2, big_description: text_gen.next , dosage_form: text_gen.next, medical_evidence: text_gen.next, trade_names: text_gen.next},
    {name: 'Кеторола́к', small_description:'нестероидный противовоспалитель- ный препарат', drug_form: 1, big_description: text_gen.next , dosage_form: text_gen.next, medical_evidence: text_gen.next, trade_names: text_gen.next},
    {name: 'Дюфалак', small_description:'слабительное средство, употребля- еться при расстройствах желудка', drug_form: 2, big_description: text_gen.next , dosage_form: text_gen.next, medical_evidence: text_gen.next, trade_names: text_gen.next},
    {name: 'Активированный уголь', small_description:'Дезинтоксикация при экзо- и эндоген- ных интоксикациях: диспепсия, метео- ризм, процессы гниения, брожения', drug_form: 1, big_description: text_gen.next , dosage_form: text_gen.next, medical_evidence: text_gen.next, trade_names: text_gen.next},
])

treatmentsForFirst = Treatment.create([
    {medicament: medicaments[0], is_more_than_21: true, dose_by_taking: dose_gen.next, admission_per_day: admission_gen.next },
    {medicament: medicaments[1], is_more_than_21: true, dose_by_taking: dose_gen.next, admission_per_day: admission_gen.next },
    {medicament: medicaments[2], is_more_than_21: true, dose_by_taking: dose_gen.next, admission_per_day: admission_gen.next },
    {medicament: medicaments[3], is_more_than_21: true, dose_by_taking: dose_gen.next, admission_per_day: admission_gen.next },
    {medicament: medicaments[4], is_more_than_21: true, dose_by_taking: dose_gen.next, admission_per_day: admission_gen.next },
    {medicament: medicaments[5], is_more_than_21: true, dose_by_taking: dose_gen.next, admission_per_day: admission_gen.next },
    {medicament: medicaments[6], is_more_than_21: true, dose_by_taking: dose_gen.next, admission_per_day: admission_gen.next },
])

treatmentsForSecond = Treatment.create([
    {medicament: medicaments[4], is_more_than_21: true, dose_by_taking: dose_gen.next, admission_per_day: admission_gen.next },
    {medicament: medicaments[5], is_more_than_21: true, dose_by_taking: dose_gen.next, admission_per_day: admission_gen.next },
    {medicament: medicaments[6], is_more_than_21: true, dose_by_taking: dose_gen.next, admission_per_day: admission_gen.next },
])

treatmentsForThird = Treatment.create([
    {medicament: medicaments[0], is_more_than_21: true, dose_by_taking: dose_gen.next, admission_per_day: admission_gen.next },
    {medicament: medicaments[1], is_more_than_21: true, dose_by_taking: dose_gen.next, admission_per_day: admission_gen.next },
    {medicament: medicaments[2], is_more_than_21: true, dose_by_taking: dose_gen.next, admission_per_day: admission_gen.next },
])

treatmentsForFour = Treatment.create([
    {medicament: medicaments[3], is_more_than_21: true, dose_by_taking: dose_gen.next, admission_per_day: admission_gen.next },
    {medicament: medicaments[4], is_more_than_21: true, dose_by_taking: dose_gen.next, admission_per_day: admission_gen.next },
    {medicament: medicaments[5], is_more_than_21: true, dose_by_taking: dose_gen.next, admission_per_day: admission_gen.next },
])

treatmentsForFive = Treatment.create([
    {medicament: medicaments[6], is_more_than_21: true, dose_by_taking: dose_gen.next, admission_per_day: admission_gen.next },
    {medicament: medicaments[0], is_more_than_21: true, dose_by_taking: dose_gen.next, admission_per_day: admission_gen.next },
    {medicament: medicaments[1], is_more_than_21: true, dose_by_taking: dose_gen.next, admission_per_day: admission_gen.next },
])

treatmentsForSix = Treatment.create([
    {medicament: medicaments[1], is_more_than_21: true, dose_by_taking: dose_gen.next, admission_per_day: admission_gen.next },
    {medicament: medicaments[2], is_more_than_21: true, dose_by_taking: dose_gen.next, admission_per_day: admission_gen.next },
    {medicament: medicaments[3], is_more_than_21: true, dose_by_taking: dose_gen.next, admission_per_day: admission_gen.next },
])

treatmentsForSeven = Treatment.create([
    {medicament: medicaments[4], is_more_than_21: true, dose_by_taking: dose_gen.next, admission_per_day: admission_gen.next },
    {medicament: medicaments[5], is_more_than_21: true, dose_by_taking: dose_gen.next, admission_per_day: admission_gen.next },
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
