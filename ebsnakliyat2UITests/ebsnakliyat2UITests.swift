//
//  ebsnakliyat2UITests.swift
//  ebsnakliyat2UITests
//
//  Created by Berk on 1.11.2022.
//

import XCTest


class ebsnakliyat2UITests: XCTestCase {
    

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    //func testExample() throws{
   
    //}
    
    func testexample1 () {
        // Sürücü silindi ekranının geldiği kontrol edilmeli
        let app = XCUIApplication()
        app.launch()
        app.buttons["Yönetici Girişi"].tap()
        app.buttons["Sürücü Ekle"].tap()
        let enterNameTextField =  app.otherElements.textFields["Sürücü Adı"]
        enterNameTextField.tap()
        let usernameTextField = app.textFields["Sürücü Adı"]
        usernameTextField.typeText("Onur Berat")
        let soyad = app.textFields["Sürücü Soyadı"]
        soyad.tap()
        soyad.typeText("Gürkan")
        let telefon = app.textFields["Sürücü Telefonu"]
        telefon.tap()
        telefon.typeText("05051120509")
        let arack = app.textFields["Araç Kapasitesi"]
        arack.tap()
        arack.typeText("6")
        let ucret = app.textFields["Ücret"]
        ucret.tap()
        ucret.typeText("24")
        let ilce = app.textFields["İlçe"]
        ilce.tap()
        ilce.typeText("Adalar")
        XCUIApplication().buttons["Sürücü Ekle"].staticTexts["Sürücü Ekle"].tap()
        app.buttons["Tamam"].tap()
        app.buttons["Giriş Ekranına Geri Dön"].tap()
        app.buttons["Yönetici Girişi"].tap()
        app.buttons["Sürücüler"].tap()
        let accordianButtonsQuery1 = app.buttons.matching(identifier: "Sürücüyü Sil")
            if accordianButtonsQuery1.count > 0 {
                let elementno = accordianButtonsQuery1.count - 1
                let firstButton = accordianButtonsQuery1.element(boundBy: elementno)
                firstButton.tap()
            }else{
                XCUIApplication().buttons["Sürücüyü Sil"].staticTexts["Sürücüyü Sil"].tap()
            }
        app.buttons["Tamam"].tap()
    }
    
    func testexample2(){
    //Scenario: Kart üzerinde yazan isim soy isimde rakam olmamalı
        let app = XCUIApplication()
        app.launch()
        app.buttons["Yönetici Girişi"].tap()
        app.buttons["Sürücü Ekle"].tap()
        let enterNameTextField =  app.otherElements.textFields["Sürücü Adı"]
        enterNameTextField.tap()
        let usernameTextField = app.textFields["Sürücü Adı"]
        usernameTextField.typeText("Onur Berat")
        let soyad = app.textFields["Sürücü Soyadı"]
        soyad.tap()
        soyad.typeText("Gurkan")
        let telefon = app.textFields["Sürücü Telefonu"]
        telefon.tap()
        telefon.typeText("05051120509")
        let arack = app.textFields["Araç Kapasitesi"]
        arack.tap()
        arack.typeText("5")
        let ucret = app.textFields["Ücret"]
        ucret.tap()
        ucret.typeText("29")
        let ilce = app.textFields["İlçe"]
        ilce.tap()
        ilce.typeText("Adalar")
        XCUIApplication().buttons["Sürücü Ekle"].staticTexts["Sürücü Ekle"].tap()
        app.buttons["Tamam"].tap()
        app.buttons["Giriş Ekranına Geri Dön"].tap()
        app.buttons["Kullanıcı Girişi"].tap()
        app.buttons["Araç Bul"].tap()
        let ilce1 = app.textFields["Kalkış İlçesi"]
        ilce1.tap()
        ilce1.typeText("Adalar")
        let ilce2 = app.textFields["Varış İlçesi"]
        ilce2.tap()
        ilce2.typeText("Avcılar")
        let esyas = app.textFields["Eşya Sayısı"]
        esyas.tap()
        esyas.typeText("5")
        let tarih = app.textFields["Tarih"]
        tarih.tap()
        tarih.typeText("16 Aralık 2022")
        XCUIApplication().buttons["Araç Bul"].staticTexts["Araç Bul"].tap()
        app.navigationBars["Yük İlanları"].staticTexts["Yük İlanları"].tap()
        let ismi = app.staticTexts["Onur Berat"]
        XCTAssertTrue(ismi.exists)
        let soyisim = app.staticTexts["Gurkan"]
        XCTAssertTrue(soyisim.exists)
        let fiyat = app.staticTexts["29"]
        XCTAssertTrue(fiyat.exists)
        let accordianButtonsQuery1 = app.buttons.matching(identifier: "Teklif Ver")
            if (accordianButtonsQuery1.count) > 0 {
                let firstButton = accordianButtonsQuery1.element(boundBy: accordianButtonsQuery1.count-1 )
                firstButton.tap()
            }
            else {
                XCUIApplication().buttons["Teklif Ver"].staticTexts["Teklif Ver"].tap()
            }
        
        let ekranTest2 = app.staticTexts["Teklifiniz Başarıyla Alındı"]
        XCTAssertTrue(ekranTest2.exists)
        XCUIApplication().buttons["Tamam"].staticTexts["Tamam"].tap()
        app.buttons["Giriş Ekranına Geri Dön"].tap()
        app.buttons["Yönetici Girişi"].tap()
        app.buttons["İlanları Gör"].tap()
       
        let accordianButtonsQuery = app.buttons.matching(identifier: "Kabul Et")
            if accordianButtonsQuery.count > 0 {
                let firstButton = accordianButtonsQuery.element(boundBy: accordianButtonsQuery.count-1)
                firstButton.tap()
            }
        else{
            app.buttons["Kabul Et"].tap()
        }
        XCUIApplication().buttons["Tamam"].staticTexts["Tamam"].tap()
        app.buttons["Giriş Ekranına Geri Dön"].tap()
        app.buttons["Kullanıcı Girişi"].tap()
        app.buttons["Siparişlerimi Görüntüle"].tap()
        
        let accordianButtonsQuery2 = app.buttons.matching(identifier: "Ödeme Yap")
            if accordianButtonsQuery2.count > 0 {
                let elementno = accordianButtonsQuery2.count - 1
                let firstButton = accordianButtonsQuery2.element(boundBy: elementno)
                firstButton.tap()
            }else{
                XCUIApplication().buttons["Ödeme Yap"].staticTexts["Ödeme Yap"].tap()
            }

        let kartNo = app.textFields["Kart Numarsı"]
        kartNo.tap()
        kartNo.typeText("5124400034362929")
        
        let skt = app.textFields["SKT"]
        skt.tap()
        skt.typeText("0927")
    
        let cvv = app.textFields["CVV"]
        cvv.tap()
        cvv.typeText("234")
        
        let kartisim = app.textFields["Kart Üzerindeki İsim"]
        kartisim.tap()
        kartisim.typeText("Onur1 Gurkan")
        
        XCUIApplication().buttons["Öde"].staticTexts["Öde"].tap()
        XCUIApplication().alerts.buttons["Tamam"].tap()

                            
    }
    
    func testexample3(){
    //Scenario: Kart numarası 16 haneden oluşmalı ve sadece rakam olmalı.
        let app = XCUIApplication()
        app.launch()
        app.buttons["Yönetici Girişi"].tap()
        app.buttons["Sürücü Ekle"].tap()
        let enterNameTextField =  app.otherElements.textFields["Sürücü Adı"]
        enterNameTextField.tap()
        let usernameTextField = app.textFields["Sürücü Adı"]
        usernameTextField.typeText("Nazlı")
        let soyad = app.textFields["Sürücü Soyadı"]
        soyad.tap()
        soyad.typeText("Gurkan")
        let telefon = app.textFields["Sürücü Telefonu"]
        telefon.tap()
        telefon.typeText("05051120509")
        let arack = app.textFields["Araç Kapasitesi"]
        arack.tap()
        arack.typeText("5")
        let ucret = app.textFields["Ücret"]
        ucret.tap()
        ucret.typeText("29")
        let ilce = app.textFields["İlçe"]
        ilce.tap()
        ilce.typeText("Adalar")
        XCUIApplication().buttons["Sürücü Ekle"].staticTexts["Sürücü Ekle"].tap()
        app.buttons["Tamam"].tap()
        app.buttons["Giriş Ekranına Geri Dön"].tap()
        app.buttons["Kullanıcı Girişi"].tap()
        app.buttons["Araç Bul"].tap()
        let ilce1 = app.textFields["Kalkış İlçesi"]
        ilce1.tap()
        ilce1.typeText("Adalar")
        let ilce2 = app.textFields["Varış İlçesi"]
        ilce2.tap()
        ilce2.typeText("Avcılar")
        let esyas = app.textFields["Eşya Sayısı"]
        esyas.tap()
        esyas.typeText("5")
        let tarih = app.textFields["Tarih"]
        tarih.tap()
        tarih.typeText("16 Aralık 2022")
        XCUIApplication().buttons["Araç Bul"].staticTexts["Araç Bul"].tap()
        app.navigationBars["Yük İlanları"].staticTexts["Yük İlanları"].tap()
        let ismi = app.staticTexts["Nazlı"]
        XCTAssertTrue(ismi.exists)
        let soyisim = app.staticTexts["Gurkan"]
        XCTAssertTrue(soyisim.exists)
        let fiyat = app.staticTexts["29"]
        XCTAssertTrue(fiyat.exists)
        let accordianButtonsQuery1 = app.buttons.matching(identifier: "Teklif Ver")
            if (accordianButtonsQuery1.count) > 0 {
                let firstButton = accordianButtonsQuery1.element(boundBy: accordianButtonsQuery1.count-1 )
                firstButton.tap()
            }
            else {
                XCUIApplication().buttons["Teklif Ver"].staticTexts["Teklif Ver"].tap()
            }
        
        let ekranTest2 = app.staticTexts["Teklifiniz Başarıyla Alındı"]
        XCTAssertTrue(ekranTest2.exists)
        XCUIApplication().buttons["Tamam"].staticTexts["Tamam"].tap()
        app.buttons["Giriş Ekranına Geri Dön"].tap()
        app.buttons["Yönetici Girişi"].tap()
        app.buttons["İlanları Gör"].tap()
       
        let accordianButtonsQuery = app.buttons.matching(identifier: "Kabul Et")
            if accordianButtonsQuery.count > 0 {
                let firstButton = accordianButtonsQuery.element(boundBy: accordianButtonsQuery.count-1)
                firstButton.tap()
            }
        else{
            app.buttons["Kabul Et"].tap()
        }
        XCUIApplication().buttons["Tamam"].staticTexts["Tamam"].tap()
        app.buttons["Giriş Ekranına Geri Dön"].tap()
        app.buttons["Kullanıcı Girişi"].tap()
        app.buttons["Siparişlerimi Görüntüle"].tap()
        
        let accordianButtonsQuery2 = app.buttons.matching(identifier: "Ödeme Yap")
            if accordianButtonsQuery2.count > 0 {
                let elementno = accordianButtonsQuery2.count - 1
                let firstButton = accordianButtonsQuery2.element(boundBy: elementno)
                firstButton.tap()
            }else{
                XCUIApplication().buttons["Ödeme Yap"].staticTexts["Ödeme Yap"].tap()
            }

        let kartNo = app.textFields["Kart Numarsı"]
        kartNo.tap()
        kartNo.typeText("5124")
        
        let skt = app.textFields["SKT"]
        skt.tap()
        skt.typeText("0927")
    
        let cvv = app.textFields["CVV"]
        cvv.tap()
        cvv.typeText("234")
        
        let kartisim = app.textFields["Kart Üzerindeki İsim"]
        kartisim.tap()
        kartisim.typeText("Nazlı Gurkan")
        
        XCUIApplication().buttons["Öde"].staticTexts["Öde"].tap()
        XCUIApplication().alerts.buttons["Tamam"].tap()

    
    }
    
    func testexample4(){
    //Scenario: CVV kodu 3 haneli ve sadece rakamlardan oluşmalı.
        let app = XCUIApplication()
        app.launch()
        app.buttons["Yönetici Girişi"].tap()
        app.buttons["Sürücü Ekle"].tap()
        let enterNameTextField =  app.otherElements.textFields["Sürücü Adı"]
        enterNameTextField.tap()
        let usernameTextField = app.textFields["Sürücü Adı"]
        usernameTextField.typeText("Onur Berat")
        let soyad = app.textFields["Sürücü Soyadı"]
        soyad.tap()
        soyad.typeText("Gurkan")
        let telefon = app.textFields["Sürücü Telefonu"]
        telefon.tap()
        telefon.typeText("05051120509")
        let arack = app.textFields["Araç Kapasitesi"]
        arack.tap()
        arack.typeText("5")
        let ucret = app.textFields["Ücret"]
        ucret.tap()
        ucret.typeText("29")
        let ilce = app.textFields["İlçe"]
        ilce.tap()
        ilce.typeText("Adalar")
        XCUIApplication().buttons["Sürücü Ekle"].staticTexts["Sürücü Ekle"].tap()
        app.buttons["Tamam"].tap()
        app.buttons["Giriş Ekranına Geri Dön"].tap()
        app.buttons["Kullanıcı Girişi"].tap()
        app.buttons["Araç Bul"].tap()
        let ilce1 = app.textFields["Kalkış İlçesi"]
        ilce1.tap()
        ilce1.typeText("Adalar")
        let ilce2 = app.textFields["Varış İlçesi"]
        ilce2.tap()
        ilce2.typeText("Avcılar")
        let esyas = app.textFields["Eşya Sayısı"]
        esyas.tap()
        esyas.typeText("5")
        let tarih = app.textFields["Tarih"]
        tarih.tap()
        tarih.typeText("16 Aralık 2022")
        XCUIApplication().buttons["Araç Bul"].staticTexts["Araç Bul"].tap()
        app.navigationBars["Yük İlanları"].staticTexts["Yük İlanları"].tap()
        let ismi = app.staticTexts["Onur Berat"]
        XCTAssertTrue(ismi.exists)
        let soyisim = app.staticTexts["Gurkan"]
        XCTAssertTrue(soyisim.exists)
        let fiyat = app.staticTexts["29"]
        XCTAssertTrue(fiyat.exists)
        let accordianButtonsQuery1 = app.buttons.matching(identifier: "Teklif Ver")
            if (accordianButtonsQuery1.count) > 0 {
                let firstButton = accordianButtonsQuery1.element(boundBy: accordianButtonsQuery1.count-1 )
                firstButton.tap()
            }
            else {
                XCUIApplication().buttons["Teklif Ver"].staticTexts["Teklif Ver"].tap()
            }
        
        let ekranTest2 = app.staticTexts["Teklifiniz Başarıyla Alındı"]
        XCTAssertTrue(ekranTest2.exists)
        XCUIApplication().buttons["Tamam"].staticTexts["Tamam"].tap()
        app.buttons["Giriş Ekranına Geri Dön"].tap()
        app.buttons["Yönetici Girişi"].tap()
        app.buttons["İlanları Gör"].tap()
       
        let accordianButtonsQuery = app.buttons.matching(identifier: "Kabul Et")
            if accordianButtonsQuery.count > 0 {
                let firstButton = accordianButtonsQuery.element(boundBy: accordianButtonsQuery.count-1)
                firstButton.tap()
            }
        else{
            app.buttons["Kabul Et"].tap()
        }
        XCUIApplication().buttons["Tamam"].staticTexts["Tamam"].tap()
        app.buttons["Giriş Ekranına Geri Dön"].tap()
        app.buttons["Kullanıcı Girişi"].tap()
        app.buttons["Siparişlerimi Görüntüle"].tap()
        
        let accordianButtonsQuery2 = app.buttons.matching(identifier: "Ödeme Yap")
            if accordianButtonsQuery2.count > 0 {
                let elementno = accordianButtonsQuery2.count - 1
                let firstButton = accordianButtonsQuery2.element(boundBy: elementno)
                firstButton.tap()
            }else{
                XCUIApplication().buttons["Ödeme Yap"].staticTexts["Ödeme Yap"].tap()
            }

        let kartNo = app.textFields["Kart Numarsı"]
        kartNo.tap()
        kartNo.typeText("5124400034362929")
        
        let skt = app.textFields["SKT"]
        skt.tap()
        skt.typeText("0927")
    
        let cvv = app.textFields["CVV"]
        cvv.tap()
        cvv.typeText("4")
        
        let kartisim = app.textFields["Kart Üzerindeki İsim"]
        kartisim.tap()
        kartisim.typeText("Onur Gurkan")
        
        XCUIApplication().buttons["Öde"].staticTexts["Öde"].tap()
        XCUIApplication().alerts.buttons["Tamam"].tap()

    
    }
    
    func testexample5(){
        //Scenario: Kart üzerinde yazan isim soy isimde rakam olmamalı
        let app = XCUIApplication()
        app.launch()
        app.buttons["Yönetici Girişi"].tap()
        app.buttons["Sürücü Ekle"].tap()
        let enterNameTextField =  app.otherElements.textFields["Sürücü Adı"]
        enterNameTextField.tap()
        let usernameTextField = app.textFields["Sürücü Adı"]
        usernameTextField.typeText("Onur Berat")
        let soyad = app.textFields["Sürücü Soyadı"]
        soyad.tap()
        soyad.typeText("Gurkan")
        let telefon = app.textFields["Sürücü Telefonu"]
        telefon.tap()
        telefon.typeText("05051120509")
        let arack = app.textFields["Araç Kapasitesi"]
        arack.tap()
        arack.typeText("5")
        let ucret = app.textFields["Ücret"]
        ucret.tap()
        ucret.typeText("29")
        let ilce = app.textFields["İlçe"]
        ilce.tap()
        ilce.typeText("Adalar")
        XCUIApplication().buttons["Sürücü Ekle"].staticTexts["Sürücü Ekle"].tap()
        app.buttons["Tamam"].tap()
        app.buttons["Giriş Ekranına Geri Dön"].tap()
        app.buttons["Kullanıcı Girişi"].tap()
        app.buttons["Araç Bul"].tap()
        let ilce1 = app.textFields["Kalkış İlçesi"]
        ilce1.tap()
        ilce1.typeText("Adalar")
        let ilce2 = app.textFields["Varış İlçesi"]
        ilce2.tap()
        ilce2.typeText("Avcılar")
        let esyas = app.textFields["Eşya Sayısı"]
        esyas.tap()
        esyas.typeText("5")
        let tarih = app.textFields["Tarih"]
        tarih.tap()
        tarih.typeText("16 Aralık 2022")
        XCUIApplication().buttons["Araç Bul"].staticTexts["Araç Bul"].tap()
        app.navigationBars["Yük İlanları"].staticTexts["Yük İlanları"].tap()
        let ismi = app.staticTexts["Onur Berat"]
        XCTAssertTrue(ismi.exists)
        let soyisim = app.staticTexts["Gurkan"]
        XCTAssertTrue(soyisim.exists)
        let fiyat = app.staticTexts["29"]
        XCTAssertTrue(fiyat.exists)
        let accordianButtonsQuery1 = app.buttons.matching(identifier: "Teklif Ver")
            if (accordianButtonsQuery1.count) > 0 {
                let firstButton = accordianButtonsQuery1.element(boundBy: accordianButtonsQuery1.count-1 )
                firstButton.tap()
            }
            else {
                XCUIApplication().buttons["Teklif Ver"].staticTexts["Teklif Ver"].tap()
            }
        
        let ekranTest2 = app.staticTexts["Teklifiniz Başarıyla Alındı"]
        XCTAssertTrue(ekranTest2.exists)
        XCUIApplication().buttons["Tamam"].staticTexts["Tamam"].tap()
        app.buttons["Giriş Ekranına Geri Dön"].tap()
        app.buttons["Yönetici Girişi"].tap()
        app.buttons["İlanları Gör"].tap()
       
        let accordianButtonsQuery = app.buttons.matching(identifier: "Kabul Et")
            if accordianButtonsQuery.count > 0 {
                let firstButton = accordianButtonsQuery.element(boundBy: accordianButtonsQuery.count-1)
                firstButton.tap()
            }
        else{
            app.buttons["Kabul Et"].tap()
        }
        XCUIApplication().buttons["Tamam"].staticTexts["Tamam"].tap()
        app.buttons["Giriş Ekranına Geri Dön"].tap()
        app.buttons["Kullanıcı Girişi"].tap()
        app.buttons["Siparişlerimi Görüntüle"].tap()
        
        let accordianButtonsQuery2 = app.buttons.matching(identifier: "Ödeme Yap")
            if accordianButtonsQuery2.count > 0 {
                let elementno = accordianButtonsQuery2.count - 1
                let firstButton = accordianButtonsQuery2.element(boundBy: elementno)
                firstButton.tap()
            }else{
                XCUIApplication().buttons["Ödeme Yap"].staticTexts["Ödeme Yap"].tap()
            }

        let kartNo = app.textFields["Kart Numarsı"]
        kartNo.tap()
        kartNo.typeText("5124400034362929")
        
        let skt = app.textFields["SKT"]
        skt.tap()
        skt.typeText("0927")
    
        let cvv = app.textFields["CVV"]
        cvv.tap()
        cvv.typeText("234")
        
        let kartisim = app.textFields["Kart Üzerindeki İsim"]
        kartisim.tap()
        kartisim.typeText("Onur Gurkan3")
        
        XCUIApplication().buttons["Öde"].staticTexts["Öde"].tap()
        XCUIApplication().alerts.buttons["Tamam"].tap()


    }
    
    
    func testexample6(){
    //Scenario: Ödeme alındı ekranının geldiği kontrol edilmeli.
        let app = XCUIApplication()
        app.launch()
        app.buttons["Yönetici Girişi"].tap()
        app.buttons["Sürücü Ekle"].tap()
        let enterNameTextField =  app.otherElements.textFields["Sürücü Adı"]
        enterNameTextField.tap()
        let usernameTextField = app.textFields["Sürücü Adı"]
        usernameTextField.typeText("Onur Berat")
        let soyad = app.textFields["Sürücü Soyadı"]
        soyad.tap()
        soyad.typeText("Gurkan")
        let telefon = app.textFields["Sürücü Telefonu"]
        telefon.tap()
        telefon.typeText("05051120509")
        let arack = app.textFields["Araç Kapasitesi"]
        arack.tap()
        arack.typeText("5")
        let ucret = app.textFields["Ücret"]
        ucret.tap()
        ucret.typeText("29")
        let ilce = app.textFields["İlçe"]
        ilce.tap()
        ilce.typeText("Adalar")
        XCUIApplication().buttons["Sürücü Ekle"].staticTexts["Sürücü Ekle"].tap()
        app.buttons["Tamam"].tap()
        app.buttons["Giriş Ekranına Geri Dön"].tap()
        app.buttons["Kullanıcı Girişi"].tap()
        app.buttons["Araç Bul"].tap()
        let ilce1 = app.textFields["Kalkış İlçesi"]
        ilce1.tap()
        ilce1.typeText("Adalar")
        let ilce2 = app.textFields["Varış İlçesi"]
        ilce2.tap()
        ilce2.typeText("Avcılar")
        let esyas = app.textFields["Eşya Sayısı"]
        esyas.tap()
        esyas.typeText("5")
        let tarih = app.textFields["Tarih"]
        tarih.tap()
        tarih.typeText("16 Aralık 2022")
        XCUIApplication().buttons["Araç Bul"].staticTexts["Araç Bul"].tap()
        app.navigationBars["Yük İlanları"].staticTexts["Yük İlanları"].tap()
        let ismi = app.staticTexts["Onur Berat"]
        XCTAssertTrue(ismi.exists)
        let soyisim = app.staticTexts["Gurkan"]
        XCTAssertTrue(soyisim.exists)
        let fiyat = app.staticTexts["29"]
        XCTAssertTrue(fiyat.exists)
        let accordianButtonsQuery1 = app.buttons.matching(identifier: "Teklif Ver")
            if (accordianButtonsQuery1.count) > 0 {
                let firstButton = accordianButtonsQuery1.element(boundBy: accordianButtonsQuery1.count-1 )
                firstButton.tap()
            }
            else {
                XCUIApplication().buttons["Teklif Ver"].staticTexts["Teklif Ver"].tap()
            }
        
        let ekranTest2 = app.staticTexts["Teklifiniz Başarıyla Alındı"]
        XCTAssertTrue(ekranTest2.exists)
        XCUIApplication().buttons["Tamam"].staticTexts["Tamam"].tap()
        app.buttons["Giriş Ekranına Geri Dön"].tap()
        app.buttons["Yönetici Girişi"].tap()
        app.buttons["İlanları Gör"].tap()
       
        let accordianButtonsQuery = app.buttons.matching(identifier: "Kabul Et")
            if accordianButtonsQuery.count > 0 {
                let firstButton = accordianButtonsQuery.element(boundBy: accordianButtonsQuery.count-1)
                firstButton.tap()
            }
        else{
            app.buttons["Kabul Et"].tap()
        }
        XCUIApplication().buttons["Tamam"].staticTexts["Tamam"].tap()
        app.buttons["Giriş Ekranına Geri Dön"].tap()
        app.buttons["Kullanıcı Girişi"].tap()
        app.buttons["Siparişlerimi Görüntüle"].tap()
        
        let accordianButtonsQuery2 = app.buttons.matching(identifier: "Ödeme Yap")
            if accordianButtonsQuery2.count > 0 {
                let elementno = accordianButtonsQuery2.count - 1
                let firstButton = accordianButtonsQuery2.element(boundBy: elementno)
                firstButton.tap()
            }else{
                XCUIApplication().buttons["Ödeme Yap"].staticTexts["Ödeme Yap"].tap()
            }

        let kartNo = app.textFields["Kart Numarsı"]
        kartNo.tap()
        kartNo.typeText("5124400034362929")
        
        let skt = app.textFields["SKT"]
        skt.tap()
        skt.typeText("0927")
    
        let cvv = app.textFields["CVV"]
        cvv.tap()
        cvv.typeText("234")
        
        let kartisim = app.textFields["Kart Üzerindeki İsim"]
        kartisim.tap()
        kartisim.typeText("Onur Gurkan")
        
        XCUIApplication().buttons["Öde"].staticTexts["Öde"].tap()
        let ekranTest3 = app.staticTexts["Ödemeniz Başarıyla Alındı"]
        XCTAssertTrue(ekranTest3.exists)
        XCUIApplication().buttons["Tamam"].staticTexts["Tamam"].tap()
    
    }
 
    func testexample7(){
    //Scenario: Yönetici tarafında sipariş kabul edilirse kabul edildi ekranı gelecek.
        let app = XCUIApplication()
        app.launch()
        app.buttons["Yönetici Girişi"].tap()
        app.buttons["Sürücü Ekle"].tap()
        let enterNameTextField =  app.otherElements.textFields["Sürücü Adı"]
        enterNameTextField.tap()
        let usernameTextField = app.textFields["Sürücü Adı"]
        usernameTextField.typeText("Berhan")
        let soyad = app.textFields["Sürücü Soyadı"]
        soyad.tap()
        soyad.typeText("Akgun")
        let telefon = app.textFields["Sürücü Telefonu"]
        telefon.tap()
        telefon.typeText("05051120509")
        let arack = app.textFields["Araç Kapasitesi"]
        arack.tap()
        arack.typeText("5")
        let ucret = app.textFields["Ücret"]
        ucret.tap()
        ucret.typeText("29")
        let ilce = app.textFields["İlçe"]
        ilce.tap()
        ilce.typeText("Adalar")
        XCUIApplication().buttons["Sürücü Ekle"].staticTexts["Sürücü Ekle"].tap()
        app.buttons["Tamam"].tap()
        app.buttons["Giriş Ekranına Geri Dön"].tap()
        app.buttons["Kullanıcı Girişi"].tap()
        app.buttons["Araç Bul"].tap()
        let ilce1 = app.textFields["Kalkış İlçesi"]
        ilce1.tap()
        ilce1.typeText("Adalar")
        let ilce2 = app.textFields["Varış İlçesi"]
        ilce2.tap()
        ilce2.typeText("Avcılar")
        let esyas = app.textFields["Eşya Sayısı"]
        esyas.tap()
        esyas.typeText("5")
        let tarih = app.textFields["Tarih"]
        tarih.tap()
        tarih.typeText("16 Aralık 2022")
        XCUIApplication().buttons["Araç Bul"].staticTexts["Araç Bul"].tap()
        app.navigationBars["Yük İlanları"].staticTexts["Yük İlanları"].tap()
        let ismi = app.staticTexts["Berhan"]
        XCTAssertTrue(ismi.exists)
        let soyisim = app.staticTexts["Akgun"]
        XCTAssertTrue(soyisim.exists)
        let fiyat = app.staticTexts["29"]
        XCTAssertTrue(fiyat.exists)
        let accordianButtonsQuery1 = app.buttons.matching(identifier: "Teklif Ver")
            if (accordianButtonsQuery1.count) > 0 {
                let firstButton = accordianButtonsQuery1.element(boundBy: accordianButtonsQuery1.count-1 )
                firstButton.tap()
            }
            else {
                XCUIApplication().buttons["Teklif Ver"].staticTexts["Teklif Ver"].tap()
            }
        let ekranTest2 = app.staticTexts["Teklifiniz Başarıyla Alındı"]
        XCTAssertTrue(ekranTest2.exists)
        XCUIApplication().buttons["Tamam"].staticTexts["Tamam"].tap()
        app.buttons["Giriş Ekranına Geri Dön"].tap()
        app.buttons["Yönetici Girişi"].tap()
        app.buttons["İlanları Gör"].tap()
       
        let accordianButtonsQuery = app.buttons.matching(identifier: "Kabul Et")
            if accordianButtonsQuery.count > 0 {
                let firstButton = accordianButtonsQuery.element(boundBy: accordianButtonsQuery.count-1)
                firstButton.tap()
            }
        else{
            app.buttons["Kabul Et"].tap()
        }
        XCUIApplication().buttons["Tamam"].staticTexts["Tamam"].tap()

        }
    
    
   
    func testexample8(){
        //Scenario: Siparişlerim ekranında kabul durumu olduğu kontrol edilecek.
        let app = XCUIApplication()
        app.launch()
        app.buttons["Kullanıcı Girişi"].tap()
        app.buttons["Siparişlerimi Görüntüle"].tap()
        let fiyat = app.staticTexts["Kabul"]
        XCTAssertTrue(fiyat.exists)
        
    }
    func testexample9(){
        // Scenario: Kullanıcı tarafında Teklif Ver butonu onaylanırsa teklifiniz iletildi ekranı gelecek.
        let app = XCUIApplication()
        app.launch()
        app.buttons["Yönetici Girişi"].tap()
        app.buttons["Sürücü Ekle"].tap()
        let enterNameTextField =  app.otherElements.textFields["Sürücü Adı"]
        enterNameTextField.tap()
        let usernameTextField = app.textFields["Sürücü Adı"]
        usernameTextField.typeText("Nazlı")
        let soyad = app.textFields["Sürücü Soyadı"]
        soyad.tap()
        soyad.typeText("Gurkan")
        let telefon = app.textFields["Sürücü Telefonu"]
        telefon.tap()
        telefon.typeText("05051120509")
        let arack = app.textFields["Araç Kapasitesi"]
        arack.tap()
        arack.typeText("5")
        let ucret = app.textFields["Ücret"]
        ucret.tap()
        ucret.typeText("30")
        let ilce = app.textFields["İlçe"]
        ilce.tap()
        ilce.typeText("Adalar")
        XCUIApplication().buttons["Sürücü Ekle"].staticTexts["Sürücü Ekle"].tap()
        app.buttons["Tamam"].tap()
        app.buttons["Giriş Ekranına Geri Dön"].tap()
        app.buttons["Kullanıcı Girişi"].tap()
        app.buttons["Araç Bul"].tap()
        let ilce1 = app.textFields["Kalkış İlçesi"]
        ilce1.tap()
        ilce1.typeText("Adalar")
        let ilce2 = app.textFields["Varış İlçesi"]
        ilce2.tap()
        ilce2.typeText("Ataşehir")
        let esyas = app.textFields["Eşya Sayısı"]
        esyas.tap()
        esyas.typeText("5")
        let tarih = app.textFields["Tarih"]
        tarih.tap()
        tarih.typeText("16 Aralık 2022")
        XCUIApplication().buttons["Araç Bul"].staticTexts["Araç Bul"].tap()
        app.navigationBars["Yük İlanları"].staticTexts["Yük İlanları"].tap()
        let ismi = app.staticTexts["Nazlı"]
        XCTAssertTrue(ismi.exists)
        let soyisim = app.staticTexts["Gurkan"]
        XCTAssertTrue(soyisim.exists)
        let fiyat = app.staticTexts["30"]
        XCTAssertTrue(fiyat.exists)
        let accordianButtonsQuery1 = app.buttons.matching(identifier: "Teklif Ver")
            if accordianButtonsQuery1.count > 0 {
                let firstButton = accordianButtonsQuery1.element(boundBy: 0)
                firstButton.tap()
            }else{
                XCUIApplication().buttons["Teklif Ver"].staticTexts["Teklif Ver"].tap()
            }
        let ekranTest2 = app.staticTexts["Teklifiniz Başarıyla Alındı"]
        XCTAssertTrue(ekranTest2.exists)
        XCUIApplication().buttons["Tamam"].staticTexts["Tamam"].tap()
    }

    func testExample10() throws {
        
       //Scenario: Sürücü eklendi ekranının geldiği test edilecek.
        let app = XCUIApplication()
        app.launch()
        app.buttons["Yönetici Girişi"].tap()
        app.buttons["Sürücü Ekle"].tap()
        let enterNameTextField =  app.otherElements.textFields["Sürücü Adı"]
        enterNameTextField.tap()
        let usernameTextField = app.textFields["Sürücü Adı"]
        usernameTextField.typeText("Melike")
        let soyad = app.textFields["Sürücü Soyadı"]
        soyad.tap()
        soyad.typeText("Gurkan")
        let telefon = app.textFields["Sürücü Telefonu"]
        telefon.tap()
        telefon.typeText("05051120501")
        let arack = app.textFields["Araç Kapasitesi"]
        arack.tap()
        arack.typeText("4")
        let ucret = app.textFields["Ücret"]
        ucret.tap()
        ucret.typeText("20")
        let ilce = app.textFields["İlçe"]
        ilce.tap()
        ilce.typeText("Adalar")
        XCUIApplication().buttons["Sürücü Ekle"].staticTexts["Sürücü Ekle"].tap()
        XCUIApplication().buttons["Tamam"].staticTexts["Tamam"].tap()

   
    }
    
    func testExample12() throws {
        // Scenario: Yönetici tarafında ilanları gör butonuna tıklayınca Yük İlanları ekranı gelecek.
        let app = XCUIApplication()
        app.launch()
        app.buttons["Yönetici Girişi"].tap()
        app.buttons["İlanları Gör"].tap()
        app.navigationBars["Yük İlanları"].staticTexts["Yük İlanları"].tap()
        
    }
    
    func testExample11(){
        //Scenario: Kullanıcı tarafında Araç Bul butonuna basıldıktan sonra ilanlar sayfasına gidecek.
        let app = XCUIApplication()
        app.launch()
        app.buttons["Kullanıcı Girişi"].tap()
        app.buttons["Araç Bul"].tap()
        let ilce = app.textFields["Kalkış İlçesi"]
        ilce.tap()
        ilce.typeText("Adalar")
        let ilce2 = app.textFields["Varış İlçesi"]
        ilce2.tap()
        ilce2.typeText("Ataşehir")
        let esyas = app.textFields["Eşya Sayısı"]
        esyas.tap()
        esyas.typeText("2")
        let tarih = app.textFields["Tarih"]
        tarih.tap()
        tarih.typeText("16 Aralık 2022")
        XCUIApplication().buttons["Araç Bul"].staticTexts["Araç Bul"].tap()
        app.navigationBars["Yük İlanları"].staticTexts["Yük İlanları"].tap()
    }
    
    func testexample12(){
        // Scenario: Sürücü başarıyla eklendi mi kontrol edilecek
        let app = XCUIApplication()
        app.launch()
        app.buttons["Yönetici Girişi"].tap()
        app.buttons["Sürücü Ekle"].tap()
        let enterNameTextField =  app.otherElements.textFields["Sürücü Adı"]
        enterNameTextField.tap()
        let usernameTextField = app.textFields["Sürücü Adı"]
        usernameTextField.typeText("Emirhan")
        let soyad = app.textFields["Sürücü Soyadı"]
        soyad.tap()
        soyad.typeText("Simsek")
        let telefon = app.textFields["Sürücü Telefonu"]
        telefon.tap()
        telefon.typeText("05051120519")
        let arack = app.textFields["Araç Kapasitesi"]
        arack.tap()
        arack.typeText("2")
        let ucret = app.textFields["Ücret"]
        ucret.tap()
        ucret.typeText("30")
        let ilce = app.textFields["İlçe"]
        ilce.tap()
        ilce.typeText("Adalar")
        XCUIApplication().buttons["Sürücü Ekle"].staticTexts["Sürücü Ekle"].tap()
        app.buttons["Tamam"].tap()
        app.buttons["Giriş Ekranına Geri Dön"].tap()
        app.buttons["Kullanıcı Girişi"].tap()
        app.buttons["Araç Bul"].tap()
        let ilce1 = app.textFields["Kalkış İlçesi"]
        ilce1.tap()
        ilce1.typeText("Adalar")
        let ilce2 = app.textFields["Varış İlçesi"]
        ilce2.tap()
        ilce2.typeText("Ataşehir")
        let esyas = app.textFields["Eşya Sayısı"]
        esyas.tap()
        esyas.typeText("2")
        let tarih = app.textFields["Tarih"]
        tarih.tap()
        tarih.typeText("16 Aralık 2022")
        XCUIApplication().buttons["Araç Bul"].staticTexts["Araç Bul"].tap()
        app.navigationBars["Yük İlanları"].staticTexts["Yük İlanları"].tap()
        let ismi = app.staticTexts["Emirhan"]
        XCTAssertTrue(ismi.exists)
        let soyisim = app.staticTexts["Simsek"]
        XCTAssertTrue(soyisim.exists)
        let fiyat = app.staticTexts["30"]
        XCTAssertTrue(fiyat.exists)
 

    }
            
  
    func testexample13 (){
        // Scenario: Siparişlerim ekranında onay bekliyor durumu doğru olduğu kontrol edilecek.
        let app = XCUIApplication()
        app.launch()
        app.buttons["Yönetici Girişi"].tap()
        app.buttons["Sürücü Ekle"].tap()
        let enterNameTextField =  app.otherElements.textFields["Sürücü Adı"]
        enterNameTextField.tap()
        let usernameTextField = app.textFields["Sürücü Adı"]
        usernameTextField.typeText("Nazlı")
        let soyad = app.textFields["Sürücü Soyadı"]
        soyad.tap()
        soyad.typeText("Sena")
        let telefon = app.textFields["Sürücü Telefonu"]
        telefon.tap()
        telefon.typeText("05051120501")
        let arack = app.textFields["Araç Kapasitesi"]
        arack.tap()
        arack.typeText("3")
        let ucret = app.textFields["Ücret"]
        ucret.tap()
        ucret.typeText("30")
        let ilce = app.textFields["İlçe"]
        ilce.tap()
        ilce.typeText("Adalar")
        XCUIApplication().buttons["Sürücü Ekle"].staticTexts["Sürücü Ekle"].tap()
        app.buttons["Tamam"].tap()
        app.buttons["Giriş Ekranına Geri Dön"].tap()
        app.buttons["Kullanıcı Girişi"].tap()
        app.buttons["Araç Bul"].tap()
        let ilce1 = app.textFields["Kalkış İlçesi"]
        ilce1.tap()
        ilce1.typeText("Adalar")
        let ilce2 = app.textFields["Varış İlçesi"]
        ilce2.tap()
        ilce2.typeText("Avcılar")
        let esyas = app.textFields["Eşya Sayısı"]
        esyas.tap()
                esyas.typeText("3")
        let tarih = app.textFields["Tarih"]
        tarih.tap()
        tarih.typeText("16 Aralık 2022")
        XCUIApplication().buttons["Araç Bul"].staticTexts["Araç Bul"].tap()
        app.navigationBars["Yük İlanları"].staticTexts["Yük İlanları"].tap()
        let ismi = app.staticTexts["Nazlı"]
        XCTAssertTrue(ismi.exists)
        let soyisim = app.staticTexts["Sena"]
        XCTAssertTrue(soyisim.exists)
        let fiyat = app.staticTexts["30"]
        XCTAssertTrue(fiyat.exists)
        let accordianButtonsQuery1 = app.buttons.matching(identifier: "Teklif Ver")
            if (accordianButtonsQuery1.count) > 0 {
                let firstButton = accordianButtonsQuery1.element(boundBy: accordianButtonsQuery1.count-1 )
                firstButton.tap()
            }
            else {
                XCUIApplication().buttons["Teklif Ver"].staticTexts["Teklif Ver"].tap()
            }
        
        let ekranTest2 = app.staticTexts["Teklifiniz Başarıyla Alındı"]
        XCTAssertTrue(ekranTest2.exists)
        XCUIApplication().buttons["Tamam"].staticTexts["Tamam"].tap()
        app.buttons["Giriş Ekranına Geri Dön"].tap()

            app.buttons["Kullanıcı Girişi"].tap()
            app.buttons["Siparişlerimi Görüntüle"].tap()
            let fyt = app.staticTexts["Onay Bekliyor"]
            XCTAssertTrue(fyt.exists)
 
    }
    func testexample15 (){
        //Scenario: Siparişlerimi görüntüle butonuna tıklayınca Siparişlerim ekranına gidecek.
        let app = XCUIApplication()
        app.launch()
        app.buttons["Kullanıcı Girişi"].tap()
        app.buttons["Siparişlerimi Görüntüle"].tap()
        let fiyat = app.staticTexts["Siparişlerim"]
        XCTAssertTrue(fiyat.exists)
        
            
    }

   // func testLaunchPerformance() throws {
    //    if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
      //      measure(metrics: [XCTApplicationLaunchMetric()]) {
        //        XCUIApplication().launch()
            
    //    }
  // 
}







