# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

projects = Project.create([{ name: "Akara" }, { name: "ProG" }])
countries = Country.create([
            { name: "Colombia" }, 
            { name: "Mexico" },
            { name: "Peru" },
            { name: "USA" },
            { name: "Argentina" }
        ])
rols = Rol.create([{ name: "Developer" }, { name: "Project Manager" }, { name: "CEO" }])