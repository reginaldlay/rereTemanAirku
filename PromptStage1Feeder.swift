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
        
        let prompt0 = Prompt(rereAvatar: UIImage(named: "rere-excited.jpg"), promptText: "Halo, sudah siap main air?", promptAudio: "1-1-1", isActivity: false, promptImage: UIImage(named: "rere-wave.jpg"), backgroundAudio: "kolam-air")
        
        let prompt1 = Prompt(rereAvatar: UIImage(named: "rere-aktivitas.jpg"), promptText: "Aktivitas: Bersama dengan anak mencari benda-benda yang bisa mengapung dan yang tidak. Gunakan baskom dan beberapa benda yang telah dipersiapkan, coba taruh diatas air dan lihat mana yang terapung dan mana yang tenggelam. Ketika beres tekan SUDAH", promptAudio: "1-1-2", isActivity: true, promptImage: UIImage(named: "batu-ban.jpg"), backgroundAudio: "kolam-air")
        
        let prompt2 = Prompt(rereAvatar: UIImage(named: "rere-bertanya.jpg"), promptText: "Apakah kamu bisa mengapung?", promptAudio: "1-1-3", isActivity: false, promptImage: UIImage(named: "pelampungs.jpg"), backgroundAudio: "ceria")
        
        
//        let prompt3 = Prompt(rereAvatar: <#T##String#>, promptText: <#T##String#>, isActivity: <#T##Bool#>, promptImage: <#T##UIImage#>, audio: <#T##String#>)
//        let prompt4 = Prompt(rereAvatar: <#T##String#>, promptText: <#T##String#>, isActivity: <#T##Bool#>, promptImage: <#T##UIImage#>, audio: <#T##String#>)
//        let prompt5 = Prompt(rereAvatar: <#T##String#>, promptText: <#T##String#>, isActivity: <#T##Bool#>, promptImage: <#T##UIImage#>, audio: <#T##String#>)
//        let prompt6 = Prompt(rereAvatar: <#T##String#>, promptText: <#T##String#>, isActivity: <#T##Bool#>, promptImage: <#T##UIImage#>, audio: <#T##String#>)
//        let prompt7 = Prompt(rereAvatar: <#T##String#>, promptText: <#T##String#>, isActivity: <#T##Bool#>, promptImage: <#T##UIImage#>, audio: <#T##String#>)
//        let prompt8 = Prompt(rereAvatar: <#T##String#>, promptText: <#T##String#>, isActivity: <#T##Bool#>, promptImage: <#T##UIImage#>, audio: <#T##String#>)
//        let prompt9 = Prompt(rereAvatar: <#T##String#>, promptText: <#T##String#>, isActivity: <#T##Bool#>, promptImage: <#T##UIImage#>, audio: <#T##String#>)
//        let prompt10 = Prompt(rereAvatar: <#T##String#>, promptText: <#T##String#>, isActivity: <#T##Bool#>, promptImage: <#T##UIImage#>, audio: <#T##String#>)
//        let prompt11 = Prompt(rereAvatar: <#T##String#>, promptText: <#T##String#>, isActivity: <#T##Bool#>, promptImage: <#T##UIImage#>, audio: <#T##String#>)
//        let prompt12 = Prompt(rereAvatar: <#T##String#>, promptText: <#T##String#>, isActivity: <#T##Bool#>, promptImage: <#T##UIImage#>, audio: <#T##String#>)
//        let prompt13 = Prompt(rereAvatar: <#T##String#>, promptText: <#T##String#>, isActivity: <#T##Bool#>, promptImage: <#T##UIImage#>, audio: <#T##String#>)
//        let prompt14 = Prompt(rereAvatar: <#T##String#>, promptText: <#T##String#>, isActivity: <#T##Bool#>, promptImage: <#T##UIImage#>, audio: <#T##String#>)
//        let prompt15 = Prompt(rereAvatar: <#T##String#>, promptText: <#T##String#>, isActivity: <#T##Bool#>, promptImage: <#T##UIImage#>, audio: <#T##String#>)
//        let prompt16 = Prompt(rereAvatar: <#T##String#>, promptText: <#T##String#>, isActivity: <#T##Bool#>, promptImage: <#T##UIImage#>, audio: <#T##String#>)
//        let prompt17 = Prompt(rereAvatar: <#T##String#>, promptText: <#T##String#>, isActivity: <#T##Bool#>, promptImage: <#T##UIImage#>, audio: <#T##String#>)
//        let prompt18 = Prompt(rereAvatar: <#T##String#>, promptText: <#T##String#>, isActivity: <#T##Bool#>, promptImage: <#T##UIImage#>, audio: <#T##String#>)
//        let prompt19 = Prompt(rereAvatar: <#T##String#>, promptText: <#T##String#>, isActivity: <#T##Bool#>, promptImage: <#T##UIImage#>, audio: <#T##String#>)
//        let prompt20 = Prompt(rereAvatar: <#T##String#>, promptText: <#T##String#>, isActivity: <#T##Bool#>, promptImage: <#T##UIImage#>, audio: <#T##String#>)
//        let prompt21 = Prompt(rereAvatar: <#T##String#>, promptText: <#T##String#>, isActivity: <#T##Bool#>, promptImage: <#T##UIImage#>, audio: <#T##String#>)
//        let prompt22 = Prompt(rereAvatar: <#T##String#>, promptText: <#T##String#>, isActivity: <#T##Bool#>, promptImage: <#T##UIImage#>, audio: <#T##String#>)
//        let prompt23 = Prompt(rereAvatar: <#T##String#>, promptText: <#T##String#>, isActivity: <#T##Bool#>, promptImage: <#T##UIImage#>, audio: <#T##String#>)
//        let prompt24 = Prompt(rereAvatar: <#T##String#>, promptText: <#T##String#>, isActivity: <#T##Bool#>, promptImage: <#T##UIImage#>, audio: <#T##String#>)
//        let prompt25 = Prompt(rereAvatar: <#T##String#>, promptText: <#T##String#>, isActivity: <#T##Bool#>, promptImage: <#T##UIImage#>, audio: <#T##String#>)
//        let prompt26 = Prompt(rereAvatar: <#T##String#>, promptText: <#T##String#>, isActivity: <#T##Bool#>, promptImage: <#T##UIImage#>, audio: <#T##String#>)
//        let prompt27 = Prompt(rereAvatar: <#T##String#>, promptText: <#T##String#>, isActivity: <#T##Bool#>, promptImage: <#T##UIImage#>, audio: <#T##String#>)
//        let prompt28 = Prompt(rereAvatar: <#T##String#>, promptText: <#T##String#>, isActivity: <#T##Bool#>, promptImage: <#T##UIImage#>, audio: <#T##String#>)
//        let prompt29 = Prompt(rereAvatar: <#T##String#>, promptText: <#T##String#>, isActivity: <#T##Bool#>, promptImage: <#T##UIImage#>, audio: <#T##String#>)
//        let prompt30 = Prompt(rereAvatar: <#T##String#>, promptText: <#T##String#>, isActivity: <#T##Bool#>, promptImage: <#T##UIImage#>, audio: <#T##String#>)
//        let prompt31 = Prompt(rereAvatar: <#T##String#>, promptText: <#T##String#>, isActivity: <#T##Bool#>, promptImage: <#T##UIImage#>, audio: <#T##String#>)
//        let prompt32 = Prompt(rereAvatar: <#T##String#>, promptText: <#T##String#>, isActivity: <#T##Bool#>, promptImage: <#T##UIImage#>, audio: <#T##String#>)
//        let prompt33 = Prompt(rereAvatar: <#T##String#>, promptText: <#T##String#>, isActivity: <#T##Bool#>, promptImage: <#T##UIImage#>, audio: <#T##String#>)
//        let prompt34 = Prompt(rereAvatar: <#T##String#>, promptText: <#T##String#>, isActivity: <#T##Bool#>, promptImage: <#T##UIImage#>, audio: <#T##String#>)
//        let prompt35 = Prompt(rereAvatar: <#T##String#>, promptText: <#T##String#>, isActivity: <#T##Bool#>, promptImage: <#T##UIImage#>, audio: <#T##String#>)
//
        arrOfPrompt.append(prompt0)
        arrOfPrompt.append(prompt1)
        arrOfPrompt.append(prompt2)
//        arrOfPrompt.append(prompt3)
//        arrOfPrompt.append(prompt4)
//        arrOfPrompt.append(prompt5)
//        arrOfPrompt.append(prompt6)
//        arrOfPrompt.append(prompt7)
//        arrOfPrompt.append(prompt8)
//        arrOfPrompt.append(prompt9)
//        arrOfPrompt.append(prompt10)
//        arrOfPrompt.append(prompt11)
//        arrOfPrompt.append(prompt12)
//        arrOfPrompt.append(prompt13)
//        arrOfPrompt.append(prompt14)
//        arrOfPrompt.append(prompt15)
//        arrOfPrompt.append(prompt16)
//        arrOfPrompt.append(prompt17)
//        arrOfPrompt.append(prompt18)
//        arrOfPrompt.append(prompt19)
//        arrOfPrompt.append(prompt20)
//        arrOfPrompt.append(prompt21)
//        arrOfPrompt.append(prompt22)
//        arrOfPrompt.append(prompt23)
//        arrOfPrompt.append(prompt24)
//        arrOfPrompt.append(prompt25)
//        arrOfPrompt.append(prompt26)
//        arrOfPrompt.append(prompt27)
//        arrOfPrompt.append(prompt28)
//        arrOfPrompt.append(prompt29)
//        arrOfPrompt.append(prompt30)
//        arrOfPrompt.append(prompt31)
//        arrOfPrompt.append(prompt32)
//        arrOfPrompt.append(prompt33)
//        arrOfPrompt.append(prompt34)
//        arrOfPrompt.append(prompt35)
        return arrOfPrompt
    }
}
