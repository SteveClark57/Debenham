//
//  SinglePlateView.swift
//  Debenham
//
//  Created by Stephen Clark on 29/6/2024.
//

import SwiftUI

struct SinglePlateView: View {
    var image: String
    var text: String
    
    var body: some View {
        VStack {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 350, height: 500, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .border(.black, width: 1)
            
            ScrollView {
                Text(text)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .frame(width: 350)
                    .padding()
            }        
        }
    }
}

#Preview {
    SinglePlateView(image: "Plate 4", text: "Plate 4. FEATURES OF THE FLOWERING PLANT _ THE GAMETOPHYTIC PHASE\nA. cut-away section of a flower of a eucalypt to show enclosure of ovules within carpels (in eucalypts, fused to form a multilocular ovary).\nB. section of an ovule to show the female gametophyte, embryo-sac (Es), with nucellus (Nuc.), integuments (Int.), chalaza (Ch.), micropyle (Mp).\nC. the eight nuclei formed within a mature embryo-sac, an egg-cell (Ec), 2 synergids (Sy.), 3 antipodals (Anp.).\nD. invasion of the male gametophyte, a pollen-tube (Pt.) to discharge nuclei (gametes), one to fuse with the egg-cell to form the zygote, the first cell of the sporophytic generation, and one to fuse with the polar nuclei to form a primary endopserm nucleus.\nE. division of the zygote (Zy.) to initiate the embryo and the primary endosperm nucleus to a number of free nuclei.\nF.mature embryo which has replaced the nucellus, the ovule becoming the seed with the hardened integuments forming the seed-coat.")
}
