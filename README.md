![](https://img.shields.io/badge/Microverse-blueviolet)

# Project Name: OPP School Library

## Project description:
Create a tool to record what books are in the library and who borrows them.

## Project Requirements:
- Create class Person with the following:
Instance vars: @id, @name, and @age.
Constructor with name, age, and parent_permission as parameter. name and parent_permission are optional and have default values of "Unknown" and true.
Getters for @id, @name, and @age.
Setters for @name and @age.
Private method is_of_age? that returns true if @age is greater or equal to 18 and false otherwise.
Public method can_use_services? that returns true if person is of age or if they have permission from parents.

- Create class Student with the following:
Inherits from Person.
Constructor extends parent's constructor by adding @classroom and a parameter for it.
Method play_hooky that returns "¯\(ツ)/¯".

- Create class Teacher with the following:
Inherits from Person.
Constructor extends parent's constructor by adding @specialization and a parameter for it.
Override can_use_services? so it always returns true.

- Each class should be saved in a separate file.

## Built With:
Major languages: Ruby
Technologies used: VSC, Github, Gitflow

##  Authors
👤 Author1

Dario Alessio

GitHub: https://github.com/DarioAlessioR

Slack: https://microverse-students.slack.com/team/U039GCFRK9B

LinkedIn: https://www.linkedin.com/in/dario-alessio-3a3b7911b

## 🤝 Contributing:

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support:

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to anyone whose code was used
- Inspiration
- etc

## 📝 License

This project is [MIT](./MIT.md) licensed.