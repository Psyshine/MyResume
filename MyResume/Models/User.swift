//
//  User.swift
//  MyResume
//
//  Created by Andry Pro on 10.02.2020.
//  Copyright © 2020 Andry Pro. All rights reserved.
//

struct User {
    let login = "@Debash"
    let password = "12345"
    
    let name: String?
    let surname: String?
    let age: Int?
    let aboutMe: String?
    let fullAbouMe: String?
    let photo: String?
    
    // MARK: - Initializers
    
    init() {
        self.name = "Andry"
        self.surname = "Prokopenko"
        self.age = 35
        self.aboutMe = "Привет, меня зовут Прокопенко Андрей, мне 35 лет и я из Украины. В 2005 году закончил Кременьчугский политехниеческий университет, по специальности инженер электроник. С 2003 работаю в небольшой телекомуникационной компании, прошел путь от монтажника сетей ЛВС до руководителя. В данный момент расширяю горизонты изучая Swift. Люблю спорт, качественную музыку, горный туризм."
        self.fullAbouMe = "В своем приложении, кроме непосредственно технического задания, попытался сымитировать работу с сетью, вижу что получилось примитивно, но я пока только учусь.... Далее идет куча текста про котиков🐱"
        self.photo = "Here must be the URL for uploading photos"
    }
    
}
