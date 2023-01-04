//
//  HomeView.swift
//  Restart
//
//  Created by Eduardo Dini on 04/01/23.
//

import SwiftUI

struct HomeView: View {
    // MARK: - PROPERTY
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false

    // MARK: - BODY
    var body: some View {
        VStack{
            // MARK: - HEADER

            Spacer()

            ZStack {
                CircleGroupView(shapeColor: .gray, shapeOpacity: 0.1)

                Image("character-2")
                    .resizable()
                    .scaledToFit()
                .padding()
            }

            // MARK: - BODY

            Text("The time that leads to mastery is dependent on the intensity of our focus")
                .font(.system(.title3, weight: .light))
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()

            // MARK: - FOOTER

            Spacer()

            Button(action: {
                isOnboardingViewActive = true
            }) {
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                Text("Restart")
                    .font(.system(.title3, design: .rounded, weight: .bold))
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large
        )

        }
    }
}

// MARK: - PREVIEW
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
