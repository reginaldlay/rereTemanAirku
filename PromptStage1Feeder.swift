//
//  PromptFeeder.swift
//  rereTemanAirku
//
//  Created by Kevin Gosalim on 11/04/22.
//

import Foundation
import UIKit

class PromptStage1Feeder {
    
    func feedPromptStage1() -> [Prompt] {
        var arrOfPrompt: [Prompt] = []
        
        let prompt0 = Prompt(rereAvatar: UIImage(named: "rere-excited.jpg"),
                             promptText: "Halo, sudah siap main air?",
                             promptAudio: "1-1-1",
                             isActivity: false,
                             promptImage: UIImage(named: "rere-wave.gif"),
                             backgroundAudio: "happy")
        
        let prompt1 = Prompt(rereAvatar: UIImage(named: "rere-normal.jpg"),
                             promptText: "Saya Rere, teman airmu, mari kita mengenal air bersama!",
                             promptAudio: "1-1-2",
                             isActivity: false,
                             promptImage: UIImage(named: "rere-wave.gif"),
                             backgroundAudio: "happy")
        
        let prompt2 = Prompt(rereAvatar: UIImage(named: "rere-normal.jpg"),
                             promptText: "Pertama-tama mari gunakan kacamata renang imajinasimu agar bisa melihat apa yang Rere lihat",
                             promptAudio: "1-1-3",
                             isActivity: false,
                             promptImage: UIImage(named: "rere-wave.gif"),
                             backgroundAudio: "happy")
        
        let prompt3 = Prompt(rereAvatar: UIImage(named: "rere-bertanya.jpg"),
                             promptText: "Bagus! Sekarang kamu bisa melihatnya?",
                             promptAudio: "1-1-4",
                             isActivity: false,
                             promptImage: UIImage(named: "rere-rame.jpg"),
                             backgroundAudio: "kolam-air")
        
        let prompt4 = Prompt(rereAvatar: UIImage(named: "rere-bertanya.jpg"),
                             promptText: "Ini apa yaa?",
                             promptAudio: "1-1-5",
                             isActivity: false,
                             promptImage: UIImage(named: "rere-rame.jpg"),
                             backgroundAudio: "kolam-air")
        
        let prompt5 = Prompt(rereAvatar: UIImage(named: "rere-excited.jpg"),
                             promptText: "Wah, airnya banyak sekali yaa!",
                             promptAudio: "1-1-6",
                             isActivity: false,
                             promptImage: UIImage(named: "rere-rame.jpg"),
                             backgroundAudio: "kolam-air")
        
        let prompt6 = Prompt(rereAvatar: UIImage(named: "rere-bertanya.jpg"),
                             promptText: "Kamu tahu ini disebut apa?",
                             promptAudio: "1-1-7",
                             isActivity: false,
                             promptImage: UIImage(named: "rere-rame.jpg"),
                             backgroundAudio: "kolam-air")
        
        let prompt7 = Prompt(rereAvatar: UIImage(named: "rere-excited.jpg"),
                             promptText: "Ya, kolam renang! Wah aku lihat kamu juga punya 'kolam renang' ya?",
                             promptAudio: "1-1-8",
                             isActivity: false,
                             promptImage: UIImage(named: "rere-rame.jpg"),
                             backgroundAudio: "kolam-air")
        
        let prompt8 = Prompt(rereAvatar: UIImage(named: "rere-excited.jpg"),
                             promptText: "Asiknya teman2 lagi bermain air dan berenang!",
                             promptAudio: "1-1-9",
                             isActivity: false,
                             promptImage: UIImage(named: "rere-rame.jpg"),
                             backgroundAudio: "kolam-air")
        
        let prompt9 = Prompt(rereAvatar: UIImage(named: "rere-bertanya.jpg"),
                             promptText: "Kamu bisa berenang?",
                             promptAudio: "1-1-10",
                             isActivity: false,
                             promptImage: UIImage(named: "rere-rame.jpg"),
                             backgroundAudio: "kolam-air")
        
        let prompt10 = Prompt(rereAvatar: UIImage(named: "rere-normal.jpg"),
                              promptText: "Kamu tahu, untuk berenang kamu harus bisa mengapung loh",
                              promptAudio: "1-1-11",
                              isActivity: false,
                              promptImage: UIImage(named: "rere-rame.jpg"),
                              backgroundAudio: "kolam-air")
        
        let prompt11 = Prompt(rereAvatar: UIImage(named: "rere-normal.jpg"),
                              promptText: "Mengapung itu berarti ketika benda berada di air dia akan naik sehingga berada di atas air",
                              promptAudio: "1-1-12",
                              isActivity: false,
                              promptImage: UIImage(named: "batu-ban.jpg"),
                              backgroundAudio: "kolam-air")
        
        let prompt12 = Prompt(rereAvatar: UIImage(named: "rere-normal.jpg"),
                              promptText: "Tenggelam berarti ketika benda berada di air dia akan turun sehingga berada dibawah permukaan air",
                              promptAudio: "1-1-13",
                              isActivity: false,
                              promptImage: UIImage(named: "batu-ban.jpg"),
                              backgroundAudio: "kolam-air")
        
        let prompt13 = Prompt(rereAvatar: UIImage(named: "rere-normal.jpg"),
                              promptText: "Di sekitar rumah kamu ada benda2 yang bisa mengapung dan yang tenggelam loh",
                              promptAudio: "1-1-14",
                              isActivity: false,
                              promptImage: UIImage(named: "batu-ban.jpg"),
                              backgroundAudio: "kolam-air")
        
        let prompt14 = Prompt(rereAvatar: UIImage(named: "rere-bertanya.jpg"),
                              promptText: "Apa kamu bisa menemukannya?",
                              promptAudio: "1-1-15",
                              isActivity: false,
                              promptImage: UIImage(named: "batu-ban.jpg"),
                              backgroundAudio: "kolam-air")
        
        let prompt15 = Prompt(rereAvatar: UIImage(named: "rere-aktivitas.jpg"),
                              promptText: "Aktivitas: Bersama dengan anak mencari benda-benda yang bisa mengapung dan yang tidak. Gunakan baskom dan beberapa benda yang telah dipersiapkan, coba taruh diatas air dan lihat mana yang terapung dan mana yang tenggelam",
                              promptAudio: "1-1-16",
                              isActivity: true,
                              promptImage: UIImage(named: "batu-ban.jpg"),
                              backgroundAudio: "kolam-air")
        
        let prompt16 = Prompt(rereAvatar: UIImage(named: "rere-excited.jpg"),
                              promptText: "Benar sekali! Hebat!",
                              promptAudio: "1-1-17",
                              isActivity: false,
                              promptImage: UIImage(named: "batu-ban.jpg"),
                              backgroundAudio: "kolam-air")
        
        let prompt17 = Prompt(rereAvatar: UIImage(named: "rere-bertanya.jpg"),
                              promptText: "Apakah kamu bisa mengapung?",
                              promptAudio: "1-1-18",
                              isActivity: false,
                              promptImage: UIImage(named: "batu-ban.jpg"),
                              backgroundAudio: "kolam-air")
        
        let prompt18 = Prompt(rereAvatar: UIImage(named: "rere-normal.jpg"),
                              promptText: "Jika tidak bisa berenang kamu tetap bisa mengapung loh",
                              promptAudio: "1-1-19",
                              isActivity: false,
                              promptImage: UIImage(named: "batu-ban.jpg"),
                              backgroundAudio: "kolam-air")
        
        let prompt19 = Prompt(rereAvatar: UIImage(named: "rere-normal.jpg"),
                              promptText: "Dengan menggunakan pelampung",
                              promptAudio: "1-1-20",
                              isActivity: false,
                              promptImage: UIImage(named: "pelampungs.jpg"),
                              backgroundAudio: "kolam-air")
        
        let prompt20 = Prompt(rereAvatar: UIImage(named: "rere-normal.jpg"),
                              promptText: "Pelampung ada banyak jenisnya, tapi harus pilih yang paling aman ya",
                              promptAudio: "1-1-21",
                              isActivity: false,
                              promptImage: UIImage(named: "pelampungs.jpg"),
                              backgroundAudio: "kolam-air")
        
        let prompt21 = Prompt(rereAvatar: UIImage(named: "rere-excited.jpg"),
                              promptText: "Mari kita bermain!",
                              promptAudio: "1-1-22",
                              isActivity: false,
                              promptImage: UIImage(named: "pelampungs.jpg"),
                              backgroundAudio: "kolam-air")
        
        let prompt22 = Prompt(rereAvatar: UIImage(named: "rere-bertanya.jpg"),
                              promptText: "Kamu ada pelampung? Ayo coba cari pelampungmu, Rere tunggu ya",
                              promptAudio: "1-1-23",
                              isActivity: false,
                              promptImage: UIImage(named: "pelampungs.jpg"),
                              backgroundAudio: "kolam-air")
        
        let prompt23 = Prompt(rereAvatar: UIImage(named: "rere-aktivitas.jpg"),
                              promptText: "Aktivitas: Bersama anak coba cari pelampung yang sudah dipersiapkan. Uji ingatan anak mana yang merupakan pelampung",
                              promptAudio: "1-1-24",
                              isActivity: true,
                              promptImage: UIImage(named: "pelampungs.jpg"),
                              backgroundAudio: "kolam-air")
        
        let prompt24 = Prompt(rereAvatar: UIImage(named: "rere-bertanya.jpg"),
                              promptText: "Apakah kamu tahu cara pakainya? Sini Rere tunjukkin yaa",
                              promptAudio: "1-1-25",
                              isActivity: false,
                              promptImage: UIImage(named: "how-to-pelampung.gif"),
                              backgroundAudio: "kolam-air")
        
        let prompt25 = Prompt(rereAvatar: UIImage(named: "rere-normal.jpg"),
                              promptText: "Begini cara pakainya",
                              promptAudio: "1-1-26",
                              isActivity: false,
                              promptImage: UIImage(named: "how-to-pelampung.gif"),
                              backgroundAudio: "kolam-air")
        
        let prompt26 = Prompt(rereAvatar: UIImage(named: "rere-aktivitas.jpg"),
                              promptText: "Aktivitas: Bersama anak coba pakai pelampung dan lepas pelampung. Orang tua melihat Rere lalu mencoba pakai juga, lalu memakaikan ke anak. Setelah itu pelampung kemudian dilepas, dan anak coba pakai sendiri",
                              promptAudio: "1-1-27",
                              isActivity: true,
                              promptImage: UIImage(named: "how-to-pelampung.gif"),
                              backgroundAudio: "kolam-air")
        
        let prompt27 = Prompt(rereAvatar: UIImage(named: "rere-normal.jpg"),
                              promptText: "Untuk dapat mengapung seperti ikan, pelampung kamu tidak boleh kempes yaa",
                              promptAudio: "1-1-28",
                              isActivity: false,
                              promptImage: UIImage(named: "how-to-pelampung.gif"),
                              backgroundAudio: "kolam-air")
        
        let prompt28 = Prompt(rereAvatar: UIImage(named: "rere-aktivitas.jpg"),
                              promptText: "Aktivitas: Pelampungnya kempes apa yang harus dilakukan? Bersama anak coba pakai pelampung yang kempes. Coba tanyakan apa bedanya. Peragakan tenggelam karena pelampung kempes. Selipkan juga meminta anak memberitahu kalau pelampungnya kempes atau bocor agar digantikan dengan yang baik. Setelah itu pelampung dilepas untuk aktivitas berikutnya",
                              promptAudio: "1-1-29",
                              isActivity: true,
                              promptImage: UIImage(named: "how-to-pelampung.gif"),
                              backgroundAudio: "kolam-air")
        
        let prompt29 = Prompt(rereAvatar: UIImage(named: "rere-excited.jpg"),
                              promptText: "Ayo sama Rere dan orang tuamu kita masuk ke kolam! Yihaa",
                              promptAudio: "1-1-30",
                              isActivity: false,
                              promptImage: UIImage(named: "rere-pool-pelampung.jpg"),
                              backgroundAudio: "kolam-air")
        
        let prompt30 = Prompt(rereAvatar: UIImage(named: "rere-aktivitas.jpg"),
                              promptText: "Aktivitas: Berjalan bersama anak ke sekitar 'kolam renang'",
                              promptAudio: "1-1-31",
                              isActivity: true,
                              promptImage: UIImage(named: "rere-pool-pelampung.jpg"),
                              backgroundAudio: "kolam-air")
        
        let prompt31 = Prompt(rereAvatar: UIImage(named: "rere-normal.jpg"),
                              promptText: "Eh, tapi kok kamu belum pakai pelampung. Ayo dipakai",
                              promptAudio: "1-1-32",
                              isActivity: false,
                              promptImage: UIImage(named: "rere-pool-pelampung.jpg"),
                              backgroundAudio: "kolam-air")
        
        let prompt32 = Prompt(rereAvatar: UIImage(named: "rere-normal.jpg"),
                              promptText: "Pelampung harus selalu dipakai ya di dalam kolam maupun di sekitar kolam",
                              promptAudio: "1-1-33",
                              isActivity: false,
                              promptImage: UIImage(named: "rere-pool-pelampung.jpg"),
                              backgroundAudio: "kolam-air")
        
        let prompt33 = Prompt(rereAvatar: UIImage(named: "rere-aktivitas.jpg"),
                              promptText: "Aktivitas: Orang tua memakai pelampung terlebih dulu dan anak memakai juga, lalu bersama jalan ke dekat kolam renang berpegangan tangan",
                              promptAudio: "1-1-34",
                              isActivity: true,
                              promptImage: UIImage(named: "rere-pool-pelampung.jpg"),
                              backgroundAudio: "kolam-air")
        
        let prompt34 = Prompt(rereAvatar: UIImage(named: "rere-bertanya.jpg"),
                              promptText: "Oh iya, ingat yaa pelampung itu bermacam-macam. Tapi ada yang paling aman loh. Bisa kamu tebak yang mana yang paling aman?",
                              promptAudio: "1-1-35",
                              isActivity: false,
                              promptImage: UIImage(named: "pelampungs.jpg"),
                              backgroundAudio: "kolam-air")
        
        let prompt35 = Prompt(rereAvatar: UIImage(named: "rere-aktivitas.jpg"),
                              promptText: "Aktivitas: Bersama dengan anak memilih alat bantu yang paling aman dan kenapa? Pilihnya dengan melepaskan dulu pelampung dan melihat bersama gambar di layar dan barang asli yang telah dipersiapkan",
                              promptAudio: "1-1-36",
                              isActivity: true,
                              promptImage: UIImage(named: "pelampungs.jpg"),
                              backgroundAudio: "kolam-air")
        
        let prompt36 = Prompt(rereAvatar: UIImage(named: "rere-normal.jpg"),
                              promptText: "Pintar, sekarang kamu sudah tahu yang mana yang paling aman. Coba ulangi dengan Papa Mama yaa",
                              promptAudio: "1-1-37",
                              isActivity: false,
                              promptImage: UIImage(named: "rere-pool-pelampung.jpg"),
                              backgroundAudio: "kolam-air")
        
        let prompt37 = Prompt(rereAvatar: UIImage(named: "rere-aktivitas.jpg"),
                              promptText: "Aktivitas: Coba orang tua berpura-pura sebagai anak mau bermain air dan lagi tidak pakai pelampung, orang tua bertanya apa yang kurang. Anak diantar memberitahu orang tua untuk memakai pakai pelampung dan juga sambil memakai pelampung sendiri ",
                              promptAudio: "1-1-38",
                              isActivity: true,
                              promptImage: UIImage(named: "rere-pool-pelampung.jpg"),
                              backgroundAudio: "kolam-air")
        
        let prompt38 = Prompt(rereAvatar: UIImage(named: "rere-excited.jpg"),
                              promptText: "Wah kamu udah lebih siap sekarang!",
                              promptAudio: "1-1-39",
                              isActivity: false,
                              promptImage: UIImage(named: "rere-wave.gif"),
                              backgroundAudio: "ceria")
        
        let prompt39 = Prompt(rereAvatar: UIImage(named: "rere-excited.jpg"),
                              promptText: "Dadaahh, Rere tunggu ya di stage selanjutnya",
                              promptAudio: "1-1-40",
                              isActivity: false,
                              promptImage: UIImage(named: "rere-wave.gif"),
                              backgroundAudio: "ceria")

        arrOfPrompt.append(prompt0)
        arrOfPrompt.append(prompt1)
        arrOfPrompt.append(prompt2)
        arrOfPrompt.append(prompt3)
        arrOfPrompt.append(prompt4)
        arrOfPrompt.append(prompt5)
        arrOfPrompt.append(prompt6)
        arrOfPrompt.append(prompt7)
        arrOfPrompt.append(prompt8)
        arrOfPrompt.append(prompt9)
        arrOfPrompt.append(prompt10)
        arrOfPrompt.append(prompt11)
        arrOfPrompt.append(prompt12)
        arrOfPrompt.append(prompt13)
        arrOfPrompt.append(prompt14)
        arrOfPrompt.append(prompt15)
        arrOfPrompt.append(prompt16)
        arrOfPrompt.append(prompt17)
        arrOfPrompt.append(prompt18)
        arrOfPrompt.append(prompt19)
        arrOfPrompt.append(prompt20)
        arrOfPrompt.append(prompt21)
        arrOfPrompt.append(prompt22)
        arrOfPrompt.append(prompt23)
        arrOfPrompt.append(prompt24)
        arrOfPrompt.append(prompt25)
        arrOfPrompt.append(prompt26)
        arrOfPrompt.append(prompt27)
        arrOfPrompt.append(prompt28)
        arrOfPrompt.append(prompt29)
        arrOfPrompt.append(prompt30)
        arrOfPrompt.append(prompt31)
        arrOfPrompt.append(prompt32)
        arrOfPrompt.append(prompt33)
        arrOfPrompt.append(prompt34)
        arrOfPrompt.append(prompt35)
        arrOfPrompt.append(prompt36)
        arrOfPrompt.append(prompt37)
        arrOfPrompt.append(prompt38)
        arrOfPrompt.append(prompt39)
        return arrOfPrompt
    }
}
