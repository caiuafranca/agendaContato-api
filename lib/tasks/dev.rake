namespace :dev do
  desc "Add contacts Faker"
  task setup: :environment do
    puts "Criando Contatos Faker"
    100.times do
      Contact.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        birthday: Faker::Date.birthday
      )
    end
    puts "Criação concluida com Sucesso!"
  end

end
