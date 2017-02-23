namespace :dev do
  desc "Add contacts Faker"
  task setup: :environment do

    puts "Criando Tipos de Contatos"
    kinds = %w(Amigo Comercial Residencial)

    kinds.each do |e|
      Kind.create!(description: e)    
    end 

    puts "Criação concluida com Sucesso!"


    puts "Criando Contatos Faker"
    100.times do
      Contact.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        birthday: Faker::Date.birthday,
        kind: Kind.all.sample
      )
    end
    puts "Criação concluida com Sucesso!"
  end

end
