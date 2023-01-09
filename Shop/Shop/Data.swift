//
//  Data.swift
//  Shop
//
//  Created by Jakub Radzik on 16/12/2022.
//

import Foundation



//example properties
var propsGPU = [
    ProductProp(key: "Układ", value: "Radeon RX 6700"),
    ProductProp(key: "Pamięć", value: "12 GB"),
    ProductProp(key: "Rodzaj pamięci", value: "GDDR6"),
    ProductProp(key: "Złącza", value: "HDMI - 1 szt., DisplayPort - 3 szt"),
]

var propsCPU = [
    ProductProp(key: "Gniazdo procesora", value: "Socket 1700"),
    ProductProp(key: "Taktowanie", value: "3.0 GHz"),
    ProductProp(key: "Liczba rdzeni", value: "24 rdzenie"),
    ProductProp(key: "Cache", value: "38 MB"),
]

var propsMOBO = [
    ProductProp(key: "Obsługiwane procesory", value: "AMD Ryzen"),
    ProductProp(key: "Format", value: "mATX"),
    ProductProp(key: "Gniazdo procesora", value: "Socket AM4"),
    ProductProp(key: "Chipset", value: "AMD B550"),
]

var propsPC = [
    ProductProp(key: "Procesor", value: "AMD Ryzen 5 7600X"),
    ProductProp(key: "Pamięć RAM", value: "32 GB"),
    ProductProp(key: "Karta graficzna", value: "AMD Radeon RX 6700 XT"),
    ProductProp(key: "System operacyjny", value: "Windows 11 Home"),
    ProductProp(key: "Pojemność dysku SSD", value: "512 GB"),
]

var propsLaptop = [
    ProductProp(key: "Ekran", value: "13.3\", 2560 x 1600px"),
    ProductProp(key: "Procesor", value: "Apple M1"),
    ProductProp(key: "Wielkość pamięci RAM", value: "8 GB"),
    ProductProp(key: "Dysk", value: "256 GB SSD"),
    ProductProp(key: "System operacyjny", value: "macOS Big Sur"),
]

var propsTablet = [
    ProductProp(key: "Wyświetlacz", value: "10.9\", 2360 x 1640px, IPS,Liquid Retina"),
    ProductProp(key: "Pamięć wbudowana", value: "64 GB"),
    ProductProp(key: "Wielkość pamięci RAM", value: "8 GB"),
    ProductProp(key: "Procesor", value: "Apple M1, 8-rdzeniowy"),
    ProductProp(key: "Wersja systemu operacyjnego", value: "iPadOS 15"),
]

var gpu: [Product] = [
    Product(name: "SAPPHIRE Radeon RX 7900 XT 20GB", image: "img1", producent:"SAPPHIRE", producentImage: "sapphire",  properties: propsGPU),
    Product(name: "XFX Radeon RX 7900 XT Speedster Merc 310 Black 20GB", image: "img2",producent:"XFX", producentImage: "xfx",  properties: propsGPU),
    Product(name: "XFX Radeon RX 7900 XT 20GB", image: "img3",producent:"XFX", producentImage: "xfx", properties: propsGPU),
    Product(name: "POWERCOLOR Radeon 6600 Fighter 8GB", image: "img4", producent:"POWERCOLOR", producentImage: "powercolor", properties: propsGPU),
    Product(name: "PALIT GeForce RTX 4080 GameRock 16GB", image: "img5", producent:"PALIT", producentImage: "palit", properties: propsGPU),
    Product(name: "ASUS Dual Radeon RX 6650 XT OC 8GB", image: "img6", producent:"ASUS", producentImage: "asus", properties: propsGPU),
    Product(name: "PALIT GeForce RTX 3060 Dual LHR 12GB", image: "img7", producent:"PALIT", producentImage: "palit", properties: propsGPU),
    Product(name: "XFX AMD Radeon RX 6700 XT Speedster Qick 319 12GB", image: "img8",producent:"XFX", producentImage: "xfx", properties: propsGPU),
    Product(name: "PALIT GeForce RTX 3060 StormX 12GB", image: "img9", producent:"PALIT", producentImage: "palit", properties: propsGPU),
    Product(name: "XFX Radeon RX 6600 Speedster SWFT 210 Core 8GB", image: "img10",producent:"XFX", producentImage: "xfx", properties: propsGPU),
    Product(name: "SAPPHIRE Radeon RX 6700 Gaming OC 10GB", image: "img11", producent:"SAPPHIRE", producentImage: "sapphire", properties: propsGPU),
    Product(name: "MSI GeForce RTX 3060 Ti Ventus LHR 8GB", image: "img12", producent:"MSI", producentImage: "msi", properties: propsGPU),
    Product(name: "ASUS Dual Radeon RX 6600 8GB", image: "img13", producent:"ASUS", producentImage: "asus", properties: propsGPU),
    Product(name: "GIGABYTE GeForce RTX 3060 Eagle OC LHR 12GB", image: "img14", producent:"GIGABYTE", producentImage: "gigabyte", properties: propsGPU),
    Product(name: "PNY GeForce GTX 1660Ti Dual Fan 6GB", image: "img15", producent:"PNY", producentImage: "pny", properties: propsGPU),
    Product(name: "PNY GeForce RTX 2060 12GB", image: "img16", producent:"PNY", producentImage: "pny", properties: propsGPU),
    Product(name: "ASUS Dual Radeon RX 6700 XT 12GB", image: "img17", producent:"ASUS", producentImage: "asus", properties: propsGPU),
    Product(name: "GIGABYTE GeForce RTX 3060 Gaming OC LHR 12GB", image: "img18", producent:"GIGABYTE", producentImage: "gigabyte", properties: propsGPU),
    Product(name: "INNO3D GeForce RTX 3060 Ti Twin X2 OC LHR 8GB", image: "img19", producent:"INNO3D", producentImage: "inno3d", properties: propsGPU),
    Product(name: "PNY GeForce RTX 3060Ti Gaming Revel Epic-X RGB LHR 8GB", image: "img20", producent:"PNY", producentImage: "pny", properties: propsGPU),
]

var mobo: [Product] = [
    Product(name: "MSI MAG Z590 Tomahawk WiFi", image: "img21", producent:"MSI", producentImage: "msi", properties: propsMOBO),
    Product(name: "ASUS Prime B660M-A D4", image: "img22", producent:"ASUS", producentImage: "asus", properties: propsMOBO),
    Product(name: "ASUS TUF Gaming B660M-Plus D4", image: "img23", producent:"ASUS", producentImage: "asus", properties: propsMOBO),
    Product(name: "GIGABYTE B660M DS3H (rev. 1.0)", image: "img24", producent:"GIGABYTE", producentImage: "gigabyte", properties: propsMOBO),
    Product(name: "GIGABYTE B660M Gaming X DDR4", image: "img25", producent:"GIGABYTE", producentImage: "gigabyte", properties: propsMOBO),
    Product(name: "GIGABYTE B550 Aorus Elite V2", image: "img26", producent:"GIGABYTE", producentImage: "gigabyte", properties: propsMOBO),
    Product(name: "ASROCK B550 Extreme4", image: "img27", producent:"ASROCK", producentImage: "asrock", properties: propsMOBO),
    Product(name: "ASUS Rog Strix B550-A Gaming", image: "img28", producent:"ASUS", producentImage: "asus", properties: propsMOBO),
    Product(name: "ASUS TUF Gaming X570-Plus", image: "img29", producent:"ASUS", producentImage: "asus", properties: propsMOBO),
    Product(name: "ASROCK Z690 Phantom Gaming 4", image: "img30", producent:"MSI", producentImage: "msi", properties: propsMOBO),
    Product(name: "MSI PRO Z690-P DDR4", image: "img31", producent:"MSI", producentImage: "msi", properties: propsMOBO),
    Product(name: "MSI MAG B560 Torpedo", image: "img32", producent:"MSI", producentImage: "msi", properties: propsMOBO),
    Product(name: "ASUS Prime B450 Plus", image: "img33", producent:"ASUS", producentImage: "asus", properties: propsMOBO),
    Product(name: "GIGABYTE B450 Aorus Elite V2", image: "img34", producent:"GIGABYTE", producentImage: "gigabyte", properties: propsMOBO),
    Product(name: "GIGABYTE B660 Gaming X", image: "img35", producent:"GIGABYTE", producentImage: "gigabyte", properties: propsMOBO),
    Product(name: "ASUS Prime B660M-A WiFi D4", image: "img36", producent:"ASUS", producentImage: "asus", properties: propsMOBO),
    Product(name: "ASUS Prime B550 Plus", image: "img37", producent:"ASUS", producentImage: "asus", properties: propsMOBO),
    Product(name: "ASUS Prime Z590-P", image: "img38", producent:"ASUS", producentImage: "asus", properties: propsMOBO),
    Product(name: "ASUS Prime Z790-A WiFi", image: "img39", producent:"ASUS", producentImage: "asus", properties: propsMOBO),
    Product(name: "ASUS TUF Gaming B560M-Plus WiFi", image: "img40", producent:"ASUS", producentImage: "asus", properties: propsMOBO),
]

var cpu: [Product] = [
    Product(name: "INTEL Core i5-13600K", image: "img41", producent:"INTEL", producentImage: "intel", properties: propsCPU),
    Product(name: "INTEL Core i5-13600KF", image: "img42", producent:"INTEL", producentImage: "intel", properties: propsCPU),
    Product(name: "INTEL Core i7-13700K", image: "img43", producent:"INTEL", producentImage: "intel", properties: propsCPU),
    Product(name: "INTEL Core i7-13700KF", image: "img44", producent:"INTEL", producentImage: "intel", properties: propsCPU),
    Product(name: "INTEL Core i9-13900K", image: "img45", producent:"INTEL", producentImage: "intel", properties: propsCPU),
    Product(name: "INTEL Core i9-13900KF", image: "img46", producent:"INTEL", producentImage: "intel", properties: propsCPU),
    Product(name: "AMD Ryzen 5 5500", image: "img47", producent:"AMD", producentImage: "amd", properties: propsCPU),
    Product(name: "AMD Ryzen 5 5600", image: "img48", producent:"AMD", producentImage: "amd", properties: propsCPU),
    Product(name: "AMD Ryzen 7 5700X", image: "img49", producent:"AMD", producentImage: "amd", properties: propsCPU),
    Product(name: "INTEL Core i5-12600", image: "img50", producent:"INTEL", producentImage: "intel", properties: propsCPU),
    Product(name: "INTEL Core i5-12400", image: "img51", producent:"INTEL", producentImage: "intel", properties: propsCPU),
    Product(name: "INTEL Core i3-12100", image: "img52", producent:"INTEL", producentImage: "intel", properties: propsCPU),
    Product(name: "INTEL Core i5-12400F", image: "img53", producent:"INTEL", producentImage: "intel", properties: propsCPU),
    Product(name: "INTEL Core i3-12100F", image: "img54", producent:"INTEL", producentImage: "intel", properties: propsCPU),
    Product(name: "INTEL Core i5-12600K", image: "img55", producent:"INTEL", producentImage: "intel", properties: propsCPU),
    Product(name: "INTEL Core i7-12700K", image: "img56", producent:"INTEL", producentImage: "intel", properties: propsCPU),
    Product(name: "INTEL Core i9-12900K", image: "img57", producent:"INTEL", producentImage: "intel", properties: propsCPU),
    Product(name: "AMD Ryzen 5 5600G", image: "img58", producent:"AMD", producentImage: "amd", properties: propsCPU),
    Product(name: "AMD Ryzen 7 5700G", image: "img59", producent:"AMD", producentImage: "amd", properties: propsCPU),
    Product(name: "AMD Ryzen 5 5600X", image: "img60", producent:"AMD", producentImage: "amd", properties: propsCPU),
]

var pc: [Product] = [
    Product(name: "MAD DOG PBA7600X-A01 R5-7600X 32GB RAM 1TB SSD Radeon RX 6700 XT Windows 11 Home", image: "img61", producent:"", producentImage: "", properties: propsPC),
    Product(name: "MAD DOG MD5600X-A03 R5-5600X 16GB RAM 500GB SSD 1TB HDD Radeon RX6600XT Windows 10 Home", image: "img62", producent:"", producentImage: "", properties: propsPC),
    Product(name: "MAD DOG MD3600-A13H R5-3600 16GB RAM 500GB SSD GeForce RTX3060 Windows 11 Home", image: "img63", producent:"", producentImage: "", properties: propsPC),
    Product(name: "ACER Predator Orion 3000 PO3-640 i5-12400 16GB RAM 512GB SSD GeForce RTX3060 Windows 11 Home", image: "img64", producent:"", producentImage: "", properties: propsPC),
    Product(name: "MAD DOG MD5600X-A12 R5-5600X 16GB RAM 1TB SSD GeForce RTX3060Ti Windows 11 Home", image: "img65", producent:"", producentImage: "", properties: propsPC),
    Product(name: "MAD DOG MD3600-A06 R5-3600 16GB RAM 500GB SSD 1TB HDD GeForce RTX3060 Windows 11 Home", image: "img66", producent:"", producentImage: "", properties: propsPC),
    Product(name: "MAD DOG MD9500-I02 i5-9500 16GB RAM 512GB SSD 1TB HDD GeForce GTX1060 Windows 10 Home", image: "img67", producent:"", producentImage: "", properties: propsPC),
    Product(name: "ASUS ROG Strix G10CE i5-11400F 16GB RAM 512GB SSD GeForce RTX3060 Windows 10 Home", image: "img68", producent:"", producentImage: "", properties: propsPC),
    Product(name: "ACER Predator Orion 3000 PO3-630 i5-11400F 16GB RAM 512GB SSD GeForce GTX1650 Windows 11 Home", image: "img69", producent:"", producentImage: "", properties: propsPC),
    Product(name: "OPTIMUS E-Sport GB450T-CR13 R5-3600 16GB RAM 1TB SSD Radeon RX6600 Windows 11 Home", image: "img70", producent:"", producentImage: "", properties: propsPC),
    Product(name: "MAD DOG MD5600X-A10 R5-5600X 16GB RAM 1TB SSD GeForce RTX3060 Windows 11 Home", image: "img71", producent:"", producentImage: "", properties: propsPC),
    Product(name: "MAD DOG MD5600X-A11 R5-5600X 16GB RAM 1TB SSD Radeon RX6600XT Windows 11 Home", image: "img72", producent:"", producentImage: "", properties: propsPC),
    Product(name: "LCO TUF 3020 i5-11400F 16GB RAM 500GB SSD GeForce RTX3060Ti Windows 10 Home", image: "img73", producent:"", producentImage: "", properties: propsPC),
    Product(name: "NTT Game ZKG-R7B450-200TE R7-3700X 16GB RAM 512GB SSD Radeon RX6600 Windows 10 Home", image: "img74", producent:"", producentImage: "", properties: propsPC),
    Product(name: "HP Victus 15L TG02-0001nw R5-5600G 16GB RAM 512GB SSD Radeon RX6600XT Windows 11 Home", image: "img75", producent:"", producentImage: "", properties: propsPC),
    Product(name: "ACTINA i5-10400F 16GB RAM 1TB SSD GeForce RTX3060 Windows 10 Home", image: "img76", producent:"", producentImage: "", properties: propsPC),
    Product(name: "AD DOG MD3400G-Z10 R5-3400G 16GB RAM 250GB SSD 1TB HDD GeForce GTX1660Ti Windows 10 Home", image: "img77", producent:"", producentImage: "", properties: propsPC),
    Product(name: "MAD DOG MD11400F-I06 i5-11400F 16GB RAM 500GB SSD 1TB HDD Radeon RX6500XT Windows 11 Home", image: "img78", producent:"", producentImage: "", properties: propsPC),
    Product(name: "ACER Nitro 50 N50-640 i5-12400 16GB RAM 512GB SSD GeForce RTX3060", image: "img79", producent:"", producentImage: "", properties: propsPC),
    Product(name: "NTT Game ZKG-I5H510-30TE i5-10400F 16GB RAM 512GB SSD GeForce GTX1660 Windows 11 Home", image: "img80", producent:"", producentImage: "", properties: propsPC),
]
var laptops: [Product] = [
    Product(name: "APPLE MacBook Air 13.3\" Retina M1 8GB RAM 256GB SSD macOS Gwiezdna szarość", image: "img81", producent:"APPLE", producentImage: "apple", properties: propsLaptop),
    Product(name: "APPLE MacBook Air 2022 13.6\" Retina M2 8GB RAM 256GB SSD macOS Gwiezdna szarość", image: "img82", producent:"APPLE", producentImage: "apple", properties: propsLaptop),
    Product(name: "APPLE MacBook Air 13.3\" Retina M1 8GB RAM 256GB SSD macOS Złoty", image: "img83", producent:"APPLE", producentImage: "apple", properties: propsLaptop),
    Product(name: "APPLE MacBook Air 13.3\" Retina M1 8GB RAM 256GB SSD macOS Srebrny (Klawiatura US)", image: "img84", producent:"APPLE", producentImage: "apple", properties: propsLaptop),
    Product(name: "APPLE MacBook Air 2022 13.6\" Retina M2 8GB RAM 256GB SSD macOS Północ", image: "img85", producent:"APPLE", producentImage: "apple", properties: propsLaptop),
    Product(name: "APPLE MacBook Air 13.3\" Retina M1 16GB RAM 256GB SSD macOS Gwiezdna szarość", image: "img86", producent:"APPLE", producentImage: "apple", properties: propsLaptop),
    Product(name: "APPLE MacBook Air 13.3\" Retina M1 8GB RAM 256GB SSD macOS Srebrny", image: "img87", producent:"APPLE", producentImage: "apple", properties: propsLaptop),
    Product(name: "APPLE MacBook Air 13.3\" Retina M1 8GB RAM 256GB SSD macOS Złoty (Klawiatura US)", image: "img88", producent:"APPLE", producentImage: "apple", properties: propsLaptop),
    Product(name: "APPLE MacBook Air 13.3\" Retina M1 16GB RAM 256GB SSD macOS Srebrny", image: "img89", producent:"APPLE", producentImage: "apple", properties: propsLaptop),
    Product(name: "APPLE MacBook Air 13.6\" Retina M2 16GB RAM 256GB SSD macOS Północ", image: "img90", producent:"APPLE", producentImage: "apple", properties: propsLaptop),
    Product(name: "APPLE MacBook Air 2022 13.6\" Retina M2 8GB RAM 256GB SSD macOS Srebrny", image: "img91", producent:"APPLE", producentImage: "apple", properties: propsLaptop),
    Product(name: "APPLE MacBook Air 2022 13.6\" Retina M2 8GB RAM 256GB SSD macOS Gwiezdna szarość", image: "img92", producent:"APPLE", producentImage: "apple", properties: propsLaptop),
    Product(name: "APPLE MacBook Air 13.6\" Retina M2 16GB RAM 512GB SSD MacOs Północ", image: "img93", producent:"APPLE", producentImage: "apple", properties: propsLaptop),
    Product(name: "APPLE MacBook Air 2022 13.6\" Retina M2 8GB RAM 256GB SSD macOS Srebrny", image: "img94", producent:"APPLE", producentImage: "apple", properties: propsLaptop),
    Product(name: "APPLE MacBook Air 13.6\" Retina M2 16GB RAM 512GB SSD macOS Srebrny", image: "img95", producent:"APPLE", producentImage: "apple", properties: propsLaptop),
    Product(name: "APPLE MacBook Air 2022 13.6\" Retina M2 8GB RAM 512GB SSD macOS Srebrny", image: "img96", producent:"APPLE", producentImage: "apple", properties: propsLaptop),
    Product(name: "APPLE MacBook Pro 2022 13\" Retina M2 8GB RAM 256GB SSD MacOS Gwiezdna szarość (Klawiatura US)", image: "img97", producent:"APPLE", producentImage: "apple", properties: propsLaptop),
    Product(name: "APPLE MacBook Pro 14\" Retina M1 Pro 32GB RAM 1TB SSD macOs Srebrny", image: "img98", producent:"APPLE", producentImage: "apple", properties: propsLaptop),
    Product(name: "APPLE MacBook Pro 2022 13\" Retina M2 8GB RAM 256GB SSD macOS Srebrny (Klawiatura US)", image: "img99", producent:"APPLE", producentImage: "apple", properties: propsLaptop),
    Product(name: "APPLE MacBook Pro 2022 13\" Retina M2 16GB RAM 256GB SSD macOS Gwiezdna szarość", image: "img100", producent:"APPLE", producentImage: "apple", properties: propsLaptop),
]
var tablets: [Product] = [
    Product(name: "APPLE iPad 10.2\" 9 gen. 64GB Wi-Fi Gwiezdna szarość", image: "img101", producent:"APPLE", producentImage: "apple", properties: propsTablet),
    Product(name: "APPLE iPad 10.2\" 9 gen. 64GB Wi-Fi Srebrny", image: "img102", producent:"APPLE", producentImage: "apple", properties: propsTablet),
    Product(name: "APPLE iPad 10.2\" 9 gen. 256GB Wi-Fi Srebrny", image: "img103", producent:"APPLE", producentImage: "apple", properties: propsTablet),
    Product(name: "APPLE iPad Air 10.9\" 5 gen. 64 GB Wi-Fi Niebieski", image: "img104", producent:"APPLE", producentImage: "apple", properties: propsTablet),
    Product(name: "APPLE iPad 10.2\" 9 gen. 256GB Wi-Fi Gwiezdna szarość", image: "img105", producent:"APPLE", producentImage: "apple", properties: propsTablet),
    Product(name: "APPLE iPad 10.9\" 10 gen. 64 GB Wi-Fi Niebieski", image: "img106", producent:"APPLE", producentImage: "apple", properties: propsTablet),
    Product(name: "APPLE iPad 10.2\" 9 gen. 64GB LTE Wi-Fi Srebrny", image: "img107", producent:"APPLE", producentImage: "apple", properties: propsTablet),
    Product(name: "APPLE iPad 10.2\" 9 gen. 64GB LTE Wi-Fi Gwiezdna szarość", image: "img108", producent:"APPLE", producentImage: "apple", properties: propsTablet),
    Product(name: "APPLE iPad mini 8.3\" 6 gen. 256GB Wi-Fi Gwiezdna szarość", image: "img109", producent:"APPLE", producentImage: "apple", properties: propsTablet),
    Product(name: "APPLE iPad Air 10.9\" 5 gen. 256 GB 5G Wi-Fi Księżycowa poświata", image: "img110", producent:"APPLE", producentImage: "apple", properties: propsTablet),
    Product(name: "APPLE iPad mini 8.3\" 6 gen. 64GB 5G Wi-Fi Gwiezdna szarość", image: "img111", producent:"APPLE", producentImage: "apple", properties: propsTablet),
    Product(name: "APPLE iPad Air 10.9\" 5 gen. 64 GB 5G Wi-Fi Niebieski", image: "img112", producent:"APPLE", producentImage: "apple", properties: propsTablet),
    Product(name: "APPLE iPad 10.2\" 9 gen. 256GB LTE Wi-Fi Srebrny", image: "img113", producent:"APPLE", producentImage: "apple", properties: propsTablet),
    Product(name: "APPLE iPad 10.2\" 9 gen. 256GB LTE Wi-Fi Gwiezdna szarość", image: "img114", producent:"APPLE", producentImage: "apple", properties: propsTablet),
    Product(name: "APPLE iPad Air 10.9\" 5 gen. 256 GB 5G Wi-Fi Niebieski", image: "img115", producent:"APPLE", producentImage: "apple", properties: propsTablet),
    Product(name: "APPLE iPad Air 10.9\" 5 gen. 64 GB 5G Wi-Fi Różowy", image: "img116", producent:"APPLE", producentImage: "apple", properties: propsTablet),
    Product(name: "APPLE iPad Air 10.9\" 5 gen. 64 GB 5G Wi-Fi Księżycowa poświata", image: "img117", producent:"APPLE", producentImage: "apple", properties: propsTablet),
    Product(name: "APPLE iPad mini 8.3\" 6 gen. 64GB Wi-Fi Gwiezdna szarość", image: "img118", producent:"APPLE", producentImage: "apple", properties: propsTablet),
    Product(name: "APPLE iPad mini 8.3\" 6 gen. 256GB Wi-Fi Księżycowa poświata", image: "img119", producent:"APPLE", producentImage: "apple", properties: propsTablet),
    Product(name: "APPLE iPad mini 8.3\" 6 gen. 64GB 5G Wi-Fi Fioletowy", image: "img120", producent:"APPLE", producentImage: "apple", properties: propsTablet),
]

var appData: [Category] = [
    Category(name: "Trendy, promocje, nowości", iconName:"laptopcomputer", subcategories: [
        Subcategory(name: "Trendy", products: [
            tablets[0],
            tablets[3],
            laptops[2],
            laptops[10],
            tablets[8],
            tablets[4],
            gpu[3],
            cpu[1],
        ]),
        Subcategory(name: "Promocje", products: [
            tablets[10],
            tablets[13],
            laptops[12],
            laptops[0],
            tablets[18],
            tablets[14],
            gpu[13],
            cpu[11],
        ]),
        Subcategory(name: "Nowości", products: [
            tablets[0],
            tablets[3],
            laptops[2],
            laptops[10],
            tablets[8],
            tablets[4],
            gpu[3],
            cpu[1],
        
        ]),
    ]),
    Category(name: "Podzespoły komputerowe", iconName: "cpu", subcategories: [
        Subcategory(name: "Karty graficzne", products: gpu ),
        Subcategory(name: "Płyty główne", products: mobo),
        Subcategory(name: "Procesory", products: cpu),
    ]),
    
    Category(name: "Laptopy i komputery", iconName:"laptopcomputer", subcategories: [
        Subcategory(name: "Laptopy", products: laptops),
        Subcategory(name: "Komputery Stacjonarne", products: pc),
        Subcategory(name: "Tablety", products: tablets),
    ]),
    
    Category(name: "Smartfony i smartwatche", iconName:"iphone.smartbatterycase.gen2", subcategories: []),
    Category(name: "Urządzenia peryferyjne", iconName:"printer", subcategories: []),
    Category(name: "TV i audio", iconName:"tv", subcategories: []),
    Category(name: "Smarthome i lifestyle", iconName:"homekit", subcategories: []),
    Category(name: "Akcesoria", iconName:"cable.connector", subcategories: []),
]
