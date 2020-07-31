//
//  KontrasepsiModel.swift
//  spk-kontrasepsi
//
//  Created by Devfx on 29/07/20.
//  Copyright © 2020 Devfx. All rights reserved.
//

import SwiftUI
struct KontrasepsiModel : Identifiable {
    
    var id = UUID()
    var namaAlat: String
    var deskAlat: String
    var image: String
    var rating: Int
    var intruksi: [String]
    var artikelTeks: [String]
        
}

let kontrasepsiData : [KontrasepsiModel] = [
        KontrasepsiModel(namaAlat: "PIL KB",
         deskAlat: "Hormonal",
         image: "pilkb",
         rating: 5,
         intruksi: ["Metode kontrasepsi pil terdiri dari 2 jenis, yaitu pil progestin dan pil kombinasi.","Pil progestin merupakan salah satu alat kontrasepsi berbentuk pil yang mengandung progestin dengan dosis sangat rendah seperti dosis hormon progesteron alami dalam tubuh wanita.","Dapat digunakan oleh wanita yang sedang menyusui dan wanita yang tidak bisa menggunakan metode kontrasepsi yang mengandung estrogen.","Pil kombinasi  merupakan pil yang mengandung 2 hormon dosisi rendah (progestin dan estrogen).","Cara kerja: menebalkan lendir serviks (menghalangi sperma bertemu dengan sel telur) dan mengganggu siklus menstruasi, termasuk mencegah  pelepasan sel telur dari ovarium (ovulasi)"],
         artikelTeks: ["1.Mengatur waktu, jarak dan jumlah kehamilan","2.Mencegah atau memperkecil kemungkinan seorang perempuan hamil mengalami komplikasi yang membahayakan jiwa atau janin selama kehamilan, persalinan dan nifas.","3.Mencegah atau memperkecil terjadinya kematian pada seorang perempuan yang mengalami komplikasi selama kehamilan, persalinan dan nifas.","4.Selain itu, Keluarga Berencana merupakan hal yang sangat strategis untuk mencegah kehamilan “Empat Terlalu” (terlalu muda, terlalu tua, terlalu sering dan terlalu banyak)."]
    ),
        KontrasepsiModel(namaAlat: "IUD / Alat Kontrasepsi Dalam Rahim (AKDR)",
                deskAlat: "Non Hormonal",
                image: "IUD",
                rating: 5,
                intruksi: ["Alat kontrasepsi dalam rahim merupakan kontrasepsi non-hormonal yang dipasang dalam rahim.","Terdiri dari bahan batang plastik fleksibel, kecil dengan lengan yang dililit tembaga.","Tenaga medis terlatih akan memasukan AKDR ke dalam rahim wanita melalui vagina dan serviks.","Bekerja secara  utama dengan mengubah susunan kimia yang merusak sperma dan sel telur sebelum keduanya dapat bertemu untuk fertilisasi/pembuahan."],
                artikelTeks: ["1.Mengatur waktu, jarak dan jumlah kehamilan","2.Mencegah atau memperkecil kemungkinan seorang perempuan hamil mengalami komplikasi yang membahayakan jiwa atau janin selama kehamilan, persalinan dan nifas.","3.Mencegah atau memperkecil terjadinya kematian pada seorang perempuan yang mengalami komplikasi selama kehamilan, persalinan dan nifas.","4.Selain itu, Keluarga Berencana merupakan hal yang sangat strategis untuk mencegah kehamilan “Empat Terlalu” (terlalu muda, terlalu tua, terlalu sering dan terlalu banyak)."]
                
           ),
        KontrasepsiModel(namaAlat: "Implant",
                deskAlat: "Hormonal",
                image: "implan",
                rating: 5,
                intruksi: ["Implan adalah suatu jenis alat kontrasepsi yang berbentuk batang atau kapsul silastik silicon polidimetri masing-masing seukuran korek api yang melepaskan progestin seperti hormon progesterone alami dalam tubuh wanita.", "Seorang petugas terlatih melakukan bedah kecil untuk memasukan implan di bawah kulit pada sisi lengan dalam dari lengan atas seorang wanita.","Tidak mengandung hormon estrogen, dan dapat digunakan oleh wanita yang tidak dapat menggunakan metode yang mengandung estrogen.","Cara kerja utama dengan menebalkan lendir serviks dan mengganggu siklus mestruasi, termasuk mencegah ovulasi."],
                artikelTeks: ["1.Mengatur waktu, jarak dan jumlah kehamilan","2.Mencegah atau memperkecil kemungkinan seorang perempuan hamil mengalami komplikasi yang membahayakan jiwa atau janin selama kehamilan, persalinan dan nifas.","3.Mencegah atau memperkecil terjadinya kematian pada seorang perempuan yang mengalami komplikasi selama kehamilan, persalinan dan nifas.","4.Selain itu, Keluarga Berencana merupakan hal yang sangat strategis untuk mencegah kehamilan “Empat Terlalu” (terlalu muda, terlalu tua, terlalu sering dan terlalu banyak)."]
           ),
        KontrasepsiModel(namaAlat: "Injeksi/Suntik ",
                deskAlat: "Hormonal",
                image: "suntikkb",
                rating: 5,
                intruksi: ["Merupakan metode kontrasepsi injeksi yang diberikan secara intramuscular.","Terdiri dari 2 jenis, yaitu injeksi progestin dan injeksi bulanan.","Injeksi progestin mengandung hormon progestin seperti progesteron alami dalam tubuh wanita, kontrasepsi ini tidak mengandung estrogen sehingga dapat digunakan selama menyusui.","Injeksi bulanan mengandung 2 hormon (progestin dan estrogen) seperti hormon alami progesteron dan estrogen dalam tubuh wanita.","Bekerja secara utama dengan mencegah pelepasan sel telur dari ovarium (ovulasi)"],
               artikelTeks: ["1.Mengatur waktu, jarak dan jumlah kehamilan","2.Mencegah atau memperkecil kemungkinan seorang perempuan hamil mengalami komplikasi yang membahayakan jiwa atau janin selama kehamilan, persalinan dan nifas.","3.Mencegah atau memperkecil terjadinya kematian pada seorang perempuan yang mengalami komplikasi selama kehamilan, persalinan dan nifas.","4.Selain itu, Keluarga Berencana merupakan hal yang sangat strategis untuk mencegah kehamilan “Empat Terlalu” (terlalu muda, terlalu tua, terlalu sering dan terlalu banyak)."]
           ),
        KontrasepsiModel(namaAlat: "KONTAP / Kontrasepsi Mantap",
                deskAlat: "Hormonal",
                image: "kontap",
                rating: 5,
                intruksi: ["Kontrasepsi mantap adalah suatu metode kontrasepsi yang dilakukan dengan cara mengikat atau memotong saluran telur (pada wanita) atau saluran sperma (pada laki laki ).","Kontrasepsi mantap adalah salah satu cara kontrasepsi untuk mengakhiri kelahiran.","Kontasepsi mantap terdiri dari Kontasepsi Pria atau Vasektomi dan Kontrasepsi Mantap atau Tubektomi."],
                artikelTeks: ["1.Mengatur waktu, jarak dan jumlah kehamilan","2.Mencegah atau memperkecil kemungkinan seorang perempuan hamil mengalami komplikasi yang membahayakan jiwa atau janin selama kehamilan, persalinan dan nifas.","3.Mencegah atau memperkecil terjadinya kematian pada seorang perempuan yang mengalami komplikasi selama kehamilan, persalinan dan nifas.","4.Selain itu, Keluarga Berencana merupakan hal yang sangat strategis untuk mencegah kehamilan “Empat Terlalu” (terlalu muda, terlalu tua, terlalu sering dan terlalu banyak)."]
           ),
        KontrasepsiModel(namaAlat: "Kondom",
                deskAlat: "",
                image: "kondom",
                rating: 5,
                intruksi: ["Kondom atau jaswadi adalah alat kontrasepsi atau alat untuk mencegah kehamilan atau penularan penyakit kelamin pada saat bersanggama.","Kondom biasanya dibuat dari bahan karet latex dan dipakaikan pada alat kelamin pria atau wanita pada keadaan ereksi sebelum bersanggama atau berhubungan suami-istri"],
               artikelTeks: ["1.Mengatur waktu, jarak dan jumlah kehamilan","2.Mencegah atau memperkecil kemungkinan seorang perempuan hamil mengalami komplikasi yang membahayakan jiwa atau janin selama kehamilan, persalinan dan nifas.","3.Mencegah atau memperkecil terjadinya kematian pada seorang perempuan yang mengalami komplikasi selama kehamilan, persalinan dan nifas.","4.Selain itu, Keluarga Berencana merupakan hal yang sangat strategis untuk mencegah kehamilan “Empat Terlalu” (terlalu muda, terlalu tua, terlalu sering dan terlalu banyak)."]
           )
        

]
 
